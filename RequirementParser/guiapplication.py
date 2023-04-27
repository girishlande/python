from PyQt5.QtCore import QDateTime, Qt, QTimer
from PyQt5.QtCore import QAbstractTableModel, QModelIndex, QFile, QTextStream, QVariant
from PyQt5 import QtGui
from PyQt5.QtWidgets import QStyledItemDelegate,QDialog,QApplication,QTableView,QHeaderView,QComboBox,QPushButton,QGroupBox,QMessageBox
from PyQt5.QtWidgets import QGridLayout,QStyleFactory,QLabel,QTextEdit,QVBoxLayout,QHBoxLayout,QFileDialog,QAbstractItemView
from ReadPDF import readPDF
from RequirementParser import *
from enum import IntEnum

import xml.etree.cElementTree as ET
import os
import speech_recognition as sr
import pyttsx3
import breeze_resources
import re

# Initialize the recognizer
r = sr.Recognizer()

#header = ['Name', 'CheckingLevel', 'Min', 'Max', 'Formula', 'ValueType', 'Compare','ROIN', 'Text']
class REQ(IntEnum):
    NAME=0
    CHECKINGLEVEL=1
    MIN=2
    MAX=3
    FORMULA=4
    VALUETYPE=5
    COMPARE=6
    ROIN=7
    TEXT=8
    
class Delegate(QStyledItemDelegate):
    def __init__(self, owner, choices):
        super().__init__(owner)
        self.items = choices

    def createEditor(self, parent, option, index):
        editor = QComboBox(parent)
        editor.addItems(self.items)
        return editor

    def paint(self, painter, option, index):
        if isinstance(self.parent(), QAbstractItemView):
            self.parent().openPersistentEditor(index, 1)
        QStyledItemDelegate.paint(self, painter, option, index)

    def setEditorData(self, editor, index):
        editor.blockSignals(True)
        value = index.data(Qt.DisplayRole)
        num = self.items.index(value)
        editor.setCurrentIndex(num)
        editor.blockSignals(False)

    def setModelData(self, editor, model, index):
        value = editor.currentText()
        model.setData(index, value, Qt.EditRole)

    def updateEditorGeometry(self, editor, option, index):
        editor.setGeometry(option.rect)

class Model(QAbstractTableModel):
    ActiveRole = Qt.UserRole + 1
    def __init__(self, datain, headerdata, parent=None):
        """
        Args:
            datain: a list of lists\n
            headerdata: a list of strings
        """
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
            # if not index.column() in range(0, 1):
                # if index.column() == 2:
                    # if r.match(value) and (0 < float(value) <= 1):
                        # self.arraydata[index.row()][index.column()] = value
                        # self.dataChanged.emit(index, index, (Qt.DisplayRole, ))
                        # return True
                # else:
                    # if r.match(value):
                        # self.arraydata[index.row()][index.column()] = value
                        # self.dataChanged.emit(index, index, (Qt.DisplayRole, ))
                        # return True
            # elif index.column() in range(0, 1):
                # self.arraydata[index.row()][index.column()] = value
                # self.dataChanged.emit(index, index, (Qt.DisplayRole, ))
                # return True
            self.arraydata[index.row()][index.column()] = value
            self.dataChanged.emit(index, index, (Qt.DisplayRole, ))
        return False

    def print_arraydata(self):
        print(self.arraydata)
    
    def isDummyRecordPresent(self):
        if(len(self.arraydata)>0):
            row = self.arraydata[0]
            if (row[0]==""):
                return True
        return False
        
    def exportToXML(self,xmlfilepath):
        root = ET.Element("Requirements")
        doc = ET.SubElement(root, "Project", name="NX_Check-Requirements")
        folder = ET.SubElement(doc, "Folder", name="Other")

        for r in self.arraydata:
            if (r[REQ.MIN]!="" and r[REQ.MAX]!=""):
               ET.SubElement(folder, "requirement", name=r[REQ.NAME], text=r[REQ.TEXT], roin=r[REQ.ROIN], ValueType=r[REQ.VALUETYPE], Compare=r[REQ.COMPARE], Min=r[REQ.MIN], Max=r[REQ.MAX], CheckingLevel=r[REQ.CHECKINGLEVEL]);
            elif (r[REQ.MIN]==""):     
                ET.SubElement(folder, "requirement", name=r[REQ.NAME], text=r[REQ.TEXT], roin=r[REQ.ROIN], ValueType=r[REQ.VALUETYPE], Compare=r[REQ.COMPARE], Max=r[REQ.MAX], CheckingLevel=r[REQ.CHECKINGLEVEL]);
            else:   
                ET.SubElement(folder, "requirement", name=r[REQ.NAME], text=r[REQ.TEXT], roin=r[REQ.ROIN], ValueType=r[REQ.VALUETYPE], Compare=r[REQ.COMPARE], Min=r[REQ.MIN], CheckingLevel=r[REQ.CHECKINGLEVEL]);    
            
        tree = ET.ElementTree(root)
        tree.write(xmlfilepath)

class WidgetGallery(QDialog):
    def __init__(self, parent=None):
        super(WidgetGallery, self).__init__(parent)

        self.setWindowFlag(Qt.WindowMinimizeButtonHint, True)
        self.setWindowFlag(Qt.WindowMaximizeButtonHint, True)
        self.setWindowIcon(QtGui.QIcon('./images/mbse1.png'))
        self.originalPalette = QApplication.palette()
        
        #height and width 
        self.mheight = 0
        self.mwidth = 0
        
        # create table view:
        self.get_choices_data()
        self.get_table_data()
        self.tableview = self.createTable()
        self.tableview.clicked.connect(self.tv_clicked_pos)

        # Set the maximum value of row to the selected row
        self.selectrow = self.tableview.model().rowCount(QModelIndex())
        
        # Top toolbar 
        openFile = QPushButton("Import File")
        openFile.setIcon(QtGui.QIcon('./images/folder_open_white_48dp.svg'))
        openFile.clicked.connect(self.getfiles)
        ProcessText = QPushButton("Process Text")
        ProcessText.setIcon(QtGui.QIcon('./images/start_white_48dp.svg'))
        ProcessText.clicked.connect(self.processText)
        self.ListenButton = QPushButton("Listen")
        self.ListenButton.setIcon(QtGui.QIcon('./images/hearing_white_48dp.svg'))
        self.ListenButton.clicked.connect(self.Listen)
        
         # create buttons:
        self.addbtn = QPushButton('Add')
        self.addbtn.setIcon(QtGui.QIcon('./images/add_white_48dp.svg'))
        self.addbtn.clicked.connect(self.insert_row)
        self.deletebtn = QPushButton('Delete')
        self.deletebtn.setIcon(QtGui.QIcon('./images/delete_white_48dp.svg'))
        self.deletebtn.clicked.connect(self.remove_row)
        self.exportbtn = QPushButton('Export')
        self.exportbtn.setIcon(QtGui.QIcon('./images/file_upload_white_48dp.svg'))
        self.exportbtn.clicked.connect(self.export_XML)
        self.resetbtn = QPushButton('Reset')
        self.resetbtn.setIcon(QtGui.QIcon('./images/restart_alt_white_48dp.svg'))
        self.resetbtn.clicked.connect(self.resetAll)
        
        # Split screen in 2 group boxes 
        self.createTopLeftGroupBox()
        self.createTopRightGroupBox()

        topLayout = QHBoxLayout()
        topLayout.setSpacing(10)
        topLayout.addWidget(openFile)
        topLayout.addWidget(ProcessText)
        topLayout.addWidget(self.ListenButton)
        topLayout.addWidget(self.addbtn)
        topLayout.addWidget(self.deletebtn)
        topLayout.addWidget(self.exportbtn)
        topLayout.addWidget(self.resetbtn)
        topLayout.addStretch(1)

        mainLayout = QGridLayout()
        mainLayout.addLayout(topLayout, 0, 0, 1, 2)
        mainLayout.addWidget(self.topLeftGroupBox, 1, 0)
        mainLayout.addWidget(self.topRightGroupBox, 1, 1)
        mainLayout.setRowStretch(1, 1)
        mainLayout.setColumnStretch(0, 1)
        mainLayout.setColumnStretch(1, 1)
        self.setLayout(mainLayout)

        self.setWindowTitle("ReqSense (MBSE)")
        self.changeStyle('Windows')
        self.remove_row_position(0)

    def resetAll(self):
        self.remove_rows_all()
        self.lineEdit.setText("")
        self.lineEditAnalysis.setText("")
        
    def setSize(self,height,width):
        self.mheight = height
        self.mwidth = width
        self.tableview.setMinimumHeight(int(self.mheight/2))
        
    def get_table_data(self): 
        # set initial table values:
        #self.tabledata = [['REQ_001', self.choices[0], "20mm", "30mm", "20mm<width<30mm","Integer","LessThan","001"]]
        self.tabledata = [['', self.choices[0], "", "", "","","","",""]]

    def get_choices_data(self):
        # set combo box choices:
        self.choices = ['Error', 'Warning', 'Information']
        
    def createTable(self):
        tv = QTableView()
        tv.setMinimumHeight(400)
        
        # set header for columns:
        header = ['Name', 'CheckingLevel', 'Min', 'Max', 'Formula', 'ValueType', 'Compare','ROIN', 'Description']       

        tablemodel = Model(self.tabledata, header, self)
        tv.setModel(tablemodel)
        hh = tv.horizontalHeader()
        #tv.resizeRowsToContents()

        # ItemDelegate for combo boxes
        tv.setItemDelegateForColumn(1, Delegate(self, self.choices))
        tv.horizontalHeader().setSectionResizeMode(QHeaderView.ResizeToContents);

        # make combo boxes editable with a single-click:
        for row in range(len(self.tabledata)):
            tv.openPersistentEditor(tablemodel.index(row, 1))

        return tv

    def export_tv(self):
        self.tableview.model().print_arraydata()
    
    def get_save_file_name(self):
        options = QFileDialog.Options()
        options |= QFileDialog.DontUseNativeDialog
        file_name, _ = QFileDialog.getSaveFileName(self,"Save File","","XML Files(*.xml)",options = options)
        return file_name
        
    def get_import_file_name(self):
        options = QFileDialog.Options()
        options |= QFileDialog.DontUseNativeDialog
        file_name, _ = QFileDialog.getOpenFileName(self,"Import File","","PDF Files(*.pdf)",options = options)
        return file_name
        
    def export_XML(self):
        file_name = self.get_save_file_name()
        if file_name:
            filename, file_extension = os.path.splitext(file_name)
            if not file_extension:
                file_extension = ".xml"
                file_name = file_name + file_extension
            #print("Export at :",file_name)
            
            self.tableview.model().exportToXML(file_name)    

    def getLastRecordID(self):
        cnt = len(self.tableview.model().arraydata)
        reqNumber = 0
        if (cnt>0):
            reqname = self.tableview.model().arraydata[cnt-1][0]
            if reqname:
                reqNumber = int(reqname.split("_",1)[1])
        return reqNumber            
            
        
    def insert_row(self, position, rows=1, index=QModelIndex()):
        reqNumber = self.getLastRecordID()
        position = self.selectrow
        self.tableview.model().beginInsertRows(QModelIndex(), position, position + rows - 1)
        
        for row in range(rows):
            roin = "00" + str(reqNumber+1)
            reqName = "REQ_" + roin
            self.tableview.model().arraydata.append([reqName, self.choices[0], "", "", "","Integer","",roin,"desc"])
            
        self.tableview.model().endInsertRows()
        self.tableview.model().rowsInserted.connect(lambda: QTimer.singleShot(0, self.tableview.scrollToBottom))
        return True
        
    def insert_row_requirement(self, d, rows=1, index=QModelIndex()):
        position = self.selectrow
        self.tableview.model().beginInsertRows(QModelIndex(), position, position + rows - 1)
        for row in range(rows):
            self.tableview.model().arraydata.append([d.name, self.choices[0], d.min, d.max, d.formula,d.valuetype,d.compare,d.roin,d.text])
        self.tableview.model().endInsertRows()
        self.tableview.model().rowsInserted.connect(lambda: QTimer.singleShot(0, self.tableview.scrollToBottom))
        return True    

    def remove_row(self, position, rows=1, index=QModelIndex()):
        position = self.selectrow
        self.tableview.model().beginRemoveRows(QModelIndex(), position, position + rows - 1)
        self.tableview.model().arraydata = self.tableview.model().arraydata[:position] + self.tableview.model().arraydata[position + rows:]
        self.tableview.model().endRemoveRows()
        return True
    
    def remove_row_position(self, position, rows=1, index=QModelIndex()):
        self.tableview.model().beginRemoveRows(QModelIndex(), position, position + rows - 1)
        self.tableview.model().arraydata = self.tableview.model().arraydata[:position] + self.tableview.model().arraydata[position + rows:]
        self.tableview.model().endRemoveRows()
        return True    

    def remove_rows_all(self, index=QModelIndex()):
        position = 0
        rows = len(self.tableview.model().arraydata)
        if rows == 0:
            return
        self.tableview.model().beginRemoveRows(QModelIndex(), position, position + rows - 1)
        self.tableview.model().arraydata = self.tableview.model().arraydata[:position] + self.tableview.model().arraydata[position + rows:]
        self.tableview.model().endRemoveRows()
        return True
        
    def tv_clicked_pos(self, indexClicked):
        self.selectrow = indexClicked.row()    
        
    def showErrorMessage(self,msgtitle,msgtext):
        msg = QMessageBox()
        msg.setIcon(QMessageBox.Critical)
        msg.setText(msgtitle)
        msg.setInformativeText(msgtext)
        msg.setWindowTitle("Error!")
        msg.exec_()

    def processText(self,):
        # Parse the text and 
        rawtext = self.lineEdit.toPlainText()
        if (len(rawtext)==0):
            self.showErrorMessage("Empty input text!","Please import file OR add some requirement text in TextBox")
            return
        #print("Text:",rawtext)
        parseText(rawtext)
        
        # Clear previous data 
        self.remove_rows_all()
        
        # Iterate on Requirement Objects, add Validation requirement entries in the output Table
        for req in req_list:
            self.insert_row_requirement(req)
        
        if (self.tableview.model().isDummyRecordPresent()):
            self.remove_row_position(0)
        
        # Iterate on analysis text and add that in output 
        text = ""
        for s in req_sentense_list:
            if (s.evaluation!=SentenseType.UBIQUTUS):
                text = text + s.toText()
        self.lineEditAnalysis.setText(text)
        
        
        
        
    def changeStyle(self, styleName):
        QApplication.setStyle(QStyleFactory.create(styleName))

    def advanceProgressBar(self):
        curVal = self.progressBar.value()
        maxVal = self.progressBar.maximum()
        self.progressBar.setValue(curVal + (maxVal - curVal) // 100)

    def createTopLeftGroupBox(self):
        self.topLeftGroupBox = QGroupBox("")

        labelInput = QLabel("Input Text:")
        labelInput.setAlignment(Qt.AlignLeft)
        self.lineEdit = QTextEdit()
        font = QtGui.QFont()
        font.setPointSize(10)
        self.lineEdit.setFont(font)
        layout = QVBoxLayout()
        layout.addWidget(labelInput)
        layout.addWidget(self.lineEdit)
        self.topLeftGroupBox.setLayout(layout)

    def createTopRightGroupBox(self):
        self.topRightGroupBox = QGroupBox("")

        self.layout = QVBoxLayout()
        self.layout.setSpacing(10)
        l2 = QLabel("Validation Requirements:")
        l2.setAlignment(Qt.AlignLeft)
        self.layout.addWidget(l2)
        self.layout.addWidget(self.tableview)
        l1 = QLabel("Analysis Result:")
        l1.setAlignment(Qt.AlignLeft)
        self.lineEditAnalysis = QTextEdit()
        #self.lineEditAnalysis.setMinimumHeight(400)
        self.layout.addWidget(l1)
        self.layout.addWidget(self.lineEditAnalysis)
        #self.layout.addStretch(1)
        self.topRightGroupBox.setLayout(self.layout)

    def getfiles(self):
      
        file_name = self.get_import_file_name()
        if file_name:
            text=""
            if file_name.lower().endswith(('.pdf')):
               text = readPDF(file_name)
            elif file_name.lower().endswith(('.txt')):
               f = open(file_name, 'r')
               with f:
                   text = f.read()
            formatted_text = text.replace('\n', '\n\n').strip()
            self.lineEdit.setText(formatted_text)
         
    # Function to convert text to speech
    def SpeakText(self,command):
        # Initialize the engine
        engine = pyttsx3.init()
        engine.say(command)
        engine.runAndWait()
    
    def Listen(self):
        # Exception handling to handle
        # exceptions at the runtime
        try:
             
            # use the microphone as source for input.
            with sr.Microphone() as source2:
                 
                # wait for a second to let the recognizer
                # adjust the energy threshold based on
                # the surrounding noise level
                #r.adjust_for_ambient_noise(source2, duration=0.2)
                 
                #listens for the user's input
                audio2 = r.listen(source2)
                 
                # Using google to recognize audio
                MyText = r.recognize_google(audio2)
                MyText = MyText.lower()
     
                lineEditText = self.lineEdit.toPlainText()
                self.lineEdit.setText(lineEditText+"\n"+MyText)
                #self.SpeakText(MyText)
                 
        except sr.RequestError as e:
            print("Could not request results; {0}".format(e))
             
        except sr.UnknownValueError:
            print("unknown error occurred")
        
  
def startApplication():
        import sys
        app = QApplication(sys.argv)
        
        # Show Dark theme based on choice 
        darkTheme = True
        if (darkTheme):
            file = QFile(":/dark/stylesheet.qss")
            file.open(QFile.ReadOnly | QFile.Text)
            stream = QTextStream(file)
            app.setStyleSheet(stream.readAll())
        
        #Launch main dialog     
        gallery = WidgetGallery()
        
        # Control size of Application based on screen size 
        screen = app.primaryScreen()
        size = screen.size()
        gallery.resize(int(size.width()),int(size.height()*.8))
        
        #gallery.setSize(int(size.width()),int(size.height()))
        gallery.showMaximized()
        
        # Exit application 
        sys.exit(app.exec())  
        
        
if __name__ == '__main__':
    startApplication()
    