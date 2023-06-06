from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
import re
import os
from pathlib import Path
from pytube import YouTube
from moviepy.editor import *
from threading import Thread

from youtubelistdownloder import *

import scrapetube

   
def on_progress(stream, chunk, bytes_remaining):
    """Callback function"""
    total_size = stream.filesize
    bytes_downloaded = total_size - bytes_remaining
    pct_completed = bytes_downloaded / total_size * 100
    print(f"Status: {round(pct_completed, 2)} %")

      
    
class Model(QAbstractTableModel):
    ActiveRole = Qt.UserRole + 1
    def __init__(self, datain, headerdata, parent=None):
        super().__init__()
        self.arraydata = datain
        self.headerdata = headerdata

    def headerData(self, section, orientation, role):
        if role == Qt.DisplayRole and orientation == Qt.Horizontal:
            return QVariant(self.headerdata[section])
        return QVariant()

    def rowCount(self, parent):
        return len(self.arraydata)

    def columnCount(self, parent):
        if len(self.arraydata) > 0:
            return len(self.arraydata[0])
        return 0

    def flags(self, index):
        return Qt.ItemIsEditable | Qt.ItemIsEnabled | Qt.ItemIsSelectable

    def data(self, index, role):
        if not index.isValid():
            return QVariant()
        elif role != Qt.DisplayRole:
            return QVariant()
        return QVariant(self.arraydata[index.row()][index.column()])

    def setData(self, index, value, role):
        r = re.compile(r"^[0-9]\d*(\.\d+)?$")
        if role == Qt.EditRole and value != "":
            if not index.column() in range(0, 1):
                if index.column() == 2:
                    if r.match(value) and (0 < float(value) <= 1):
                        self.arraydata[index.row()][index.column()] = value
                        self.dataChanged.emit(index, index, (Qt.DisplayRole, ))
                        return True
                else:
                    if r.match(value):
                        self.arraydata[index.row()][index.column()] = value
                        self.dataChanged.emit(index, index, (Qt.DisplayRole, ))
                        return True
            elif index.column() in range(0, 1):
                self.arraydata[index.row()][index.column()] = value
                self.dataChanged.emit(index, index, (Qt.DisplayRole, ))
                return True
        return False

    def print_arraydata(self):
        print(self.arraydata)


class YoutubeDialog(QDialog):
    def __init__(self,title,msg):
        super().__init__()

        self.setWindowTitle(title)
        self.url = ""

        QBtn = QDialogButtonBox.Ok | QDialogButtonBox.Cancel

        self.buttonBox = QDialogButtonBox(QBtn)
        self.buttonBox.accepted.connect(self.accept)
        self.buttonBox.rejected.connect(self.reject)

        self.layout = QVBoxLayout()
        message = QLabel(msg)
        urlText = QLineEdit()
        urlText.setMaxLength(400)
        urlText.textChanged.connect(self.text_changed)
        self.layout.addWidget(message)
        self.layout.addWidget(urlText)
        self.layout.addWidget(self.buttonBox)
        self.setLayout(self.layout)
        self.resize(400,100)
        
    def text_changed(self,s):
        self.url = s
        
class Main(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)

        # create table view:
        self.get_choices_data()
        self.get_table_data()
        self.tableview = self.createTable()
        self.tableview.clicked.connect(self.tv_clicked_pos)
        self.Links = []

        # Set the maximum value of row to the selected row
        self.selectrow = self.tableview.model().rowCount(QModelIndex())

        # create buttons:
        self.clearBtn = QPushButton('Clear')
        self.clearBtn.clicked.connect(self.clearData)
        self.importbtn = QPushButton('Import MP4 Files')
        self.importbtn.clicked.connect(self.importFiles)
        self.convertbtn = QPushButton('Convert')
        self.convertbtn.clicked.connect(self.convertFiles)
        self.downloadbtn = QPushButton('Download Youtube video')
        self.downloadbtn.clicked.connect(self.downloadAndConvert)
        self.downloadlistbtn = QPushButton('Download youtube list')
        self.downloadlistbtn.clicked.connect(self.downloadList)
        self.downloadchannelbtn = QPushButton('Download youtube channel')
        self.downloadchannelbtn.clicked.connect(self.downloadChannel)
 
        # create youtube download path :
        self.downloadpath = str(Path.home() / "Downloads")
        self.downloadPathBtn = QPushButton('Path:'+self.downloadpath)
        self.downloadFile = ""
        pixmapi = getattr(QStyle, "SP_DirIcon")
        icon = self.style().standardIcon(pixmapi)
        self.downloadPathBtn.setIcon(icon)
        self.downloadPathBtn.clicked.connect(self.getDownloadPath)

        # create gridlayout
        self.grid_layout = QGridLayout()
        self.grid_layout.addWidget(self.clearBtn, 2, 1, 1, 1)
        self.grid_layout.addWidget(self.importbtn, 2, 2, 1, 1)
        self.grid_layout.addWidget(self.convertbtn, 2, 3, 1, 1)
        self.grid_layout.addWidget(self.downloadbtn, 2, 4, 1, 1)
        self.grid_layout.addWidget(self.downloadlistbtn, 2, 5, 1, 1)
        self.grid_layout.addWidget(self.downloadchannelbtn, 2, 6, 1, 1)
        self.grid_layout.addWidget(self.downloadPathBtn, 2, 7, 1, 1)
        
        self.grid_layout.addWidget(self.tableview, 1, 0, 1, 7)
        

        # initializing layout
        self.title = 'MP4 to Mp3 converter'
        self.setWindowTitle(self.title)
        self.setGeometry(0, 0, 1024, 576)
        self.showMaximized()
        self.centralwidget = QWidget()
        self.centralwidget.setLayout(self.grid_layout)
        self.setCentralWidget(self.centralwidget)
        
        self.tabledata.clear()

    def clearData(self):  
        self.tabledata.clear()
        self.refreshTableView()
        
    def getDownloadPath(self):
        dir = str(QFileDialog.getExistingDirectory(self, "Select youtube download location"))
        if (dir):
            self.downloadpath = dir
            self.downloadPathBtn.setText(dir)
        else:
            dir = self.downloadpath
        return dir
        
    def get_import_file_names(self):
        options = QFileDialog.Options()
        #options |= QFileDialog.DontUseNativeDialog
        file_names, _ = QFileDialog.getOpenFileNames(self,"Import Files","","Mp4 Files(*.mp4)",options = options)
        return file_names
        
    def get_table_data(self): 
        # set initial table values:
        self.tabledata = [['DummyFile','Dummy1', 'Dummy2']]

    def get_choices_data(self):
        # set combo box choices:
        self.choices = ['Mp4', 'Mp3', 'AVI']

    def createTable(self):
        tv = QTableView()

        # set header for columns:
        header = ['File In', 'File Out', 'Status']       

        tablemodel = Model(self.tabledata, header, self)
        tv.setModel(tablemodel)
        hh = tv.horizontalHeader()
        tv.resizeRowsToContents()
        
        return tv

    def refreshTableView(self):
        tv = self.tableview
        hh = tv.horizontalHeader()
        hh.setSectionResizeMode(0, QHeaderView.ResizeToContents)
        hh.setSectionResizeMode(1, QHeaderView.ResizeToContents)
        hh.setSectionResizeMode(2, QHeaderView.ResizeToContents)
        
    def addTableEntry(self,filein,fileout,status):
        position = self.selectrow
        self.tableview.model().beginInsertRows(QModelIndex(), position, position)
        self.tableview.model().arraydata.append([filein,fileout,status])
        self.tableview.model().endInsertRows()

    def importFiles(self):
        #self.tableview.model().print_arraydata()
        file_names = self.get_import_file_names()
        if file_names:
            for file_name in file_names:
                if file_name.lower().endswith(('.mp4')):
                    f = FileRecord(file_name)
                    self.addTableEntry(f.path,f.outfile,f.status)
        
        self.refreshTableView()
        #hh.setSectionResizeMode(2, QHeaderView.Stretch)
        
    def MP4ToMP3(self,mp4, mp3):
        FILETOCONVERT = AudioFileClip(mp4)
        FILETOCONVERT.write_audiofile(mp3)
        FILETOCONVERT.close()
    
    def convertFunc0(self):
        if (len(self.links)<1):
            return
        for r in self.links[0]:
            sourcefile = r[0]
            destfile = r[1]
            self.MP4ToMP3(sourcefile,destfile)
            
    def convertFunc1(self):
        if (len(self.links)<2):
            return
        for r in self.links[1]:
            sourcefile = r[0]
            destfile = r[1]
            self.MP4ToMP3(sourcefile,destfile)        
    
    def convertFunc2(self):
        if (len(self.links)<3):
            return
        for r in self.links[2]:
            sourcefile = r[0]
            destfile = r[1]
            self.MP4ToMP3(sourcefile,destfile)        
        
    def convertFunc3(self):
        if (len(self.links)<4):
            return
        for r in self.links[3]:
            sourcefile = r[0]
            destfile = r[1]
            self.MP4ToMP3(sourcefile,destfile)        
    
    def split_link(self,links,size):
        for i in range(0,len(links),size):
            yield links[i:i+size]
        
    def convertFiles(self):
        print("Converting files")
        for i,r in enumerate(self.tabledata):
            sourcefile = r[0]
            destfile = r[1]
            #print(f"Source:{sourcefile} -> Dest:{destfile}")
            #thread = Thread(target=self.MP4ToMP3,args=(sourcefile,destfile))
            #thread.start()
            
        # Split Table data in 4 parts. And Convert it using 4 threads
        size = ceil(len(self.tabledata)/4)
        self.links = list(split_link(self.tabledata,size))

        debug = False
        if debug:
            count = 1
            for i in self.links:
                print(f"\nPortion {count}")
                count+=1
                for j in i:
                    print(j)
        
        t1 = threading.Thread(target=self.convertFunc0,name='C1')
        t2 = threading.Thread(target=self.convertFunc1,name='C2')
        t3 = threading.Thread(target=self.convertFunc2,name='C3')
        t4 = threading.Thread(target=self.convertFunc3,name='C4')
        t1.start()
        t2.start()
        t3.start()
        t4.start()
            
            
    def showDownloadComplete(self):
       msg = QMessageBox()
       msg.setIcon(QMessageBox.Information)
       msg.setText("Download Complete")
       destpath = os.path.join(self.downloadpath, self.downloadFile) 
       msg.setInformativeText(destpath)
       msg.setWindowTitle("Download complete")
       msg.setStandardButtons(QMessageBox.Ok)
       retval = msg.exec_()
   
    def downloadChannelVideos(self,channel_id):
        videos = scrapetube.get_channel(channel_id)
        urls = []
        for video in videos:
            url = "https://www.youtube.com/watch?v="+str(video['videoId'])
            #print(url)
            urls.append(url)
        
        for u in urls:
            self.Download(u)
            
    def Download(self,link):
        youtubeObject = YouTube(link,on_progress_callback=on_progress)
        #youtubeObject = youtubeObject.streams.get_highest_resolution()
        youtubeObject = youtubeObject.streams.get_audio_only()
        self.downloadFile = youtubeObject.default_filename
        
        try:
            youtubeObject.download(self.downloadpath)
            sourcefile = os.path.join(self.downloadpath, self.downloadFile)
            
            if (os.path.isfile(sourcefile)):
                #Convert downloaded file to MP3 format 
                fr = FileRecord(sourcefile)
                thread = Thread(target=self.MP4ToMP3,args=(fr.path,fr.outfile))
                thread.start()
                self.addTableEntry(fr.path,fr.outfile,"complete")
                self.refreshTableView()
        except:
            print("An error has occurred")
        
    def downloadAndConvert(self):
        dlg = YoutubeDialog("Download youtube Video","Enter youtube video link")
        if dlg.exec():
            print("lets Download URL:",dlg.url)
            self.Download(dlg.url)
        else:
            print("Cancel!")  
            
    def downloadList(self):
        dlg = YoutubeDialog("Download youtube playlist","Enter youtube playlist link")
        if dlg.exec():
            print("lets Download youtube List URL:",dlg.url)
            downloadPlaylist(dlg.url,self.downloadpath)
        else:
            print("Cancel!")     
    
    def downloadChannel(self):
        dlg = YoutubeDialog("Download youtube Channel","Enter youtube channel ID:")
        if dlg.exec():
            print("lets Download youtube Channel:",dlg.url)
            self.downloadChannelVideos(dlg.url)
        else:
            print("Cancel!") 

    def insert_row(self, position, rows=1, index=QModelIndex()):
        position = self.selectrow
        self.tableview.model().beginInsertRows(QModelIndex(), position, position + rows - 1)
        for row in range(rows):
            self.tableview.model().arraydata.append(['Name', self.choices[0], 0.0, 0.0, 0.0])
        self.tableview.model().endInsertRows()
        self.tableview.model().rowsInserted.connect(lambda: QTimer.singleShot(0, self.tableview.scrollToBottom))
        return True

    def remove_row(self, position, rows=1, index=QModelIndex()):
        position = self.selectrow
        self.tableview.model().beginRemoveRows(QModelIndex(), position, position + rows - 1)
        self.tableview.model().arraydata = self.tableview.model().arraydata[:position] + self.tableview.model().arraydata[position + rows:]
        self.tableview.model().endRemoveRows()
        return True

    def tv_clicked_pos(self, indexClicked):
        self.selectrow = indexClicked.row()

if __name__ == '__main__':
    import sys
    app = QApplication(sys.argv)
    main = Main()
    
    screen = app.primaryScreen()
    size = screen.size()
    main.resize(int(size.width()*.8),int(size.height()*.4))
    
    main.show()
    app.exec_()