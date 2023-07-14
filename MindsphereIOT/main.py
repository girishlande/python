import sys
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *
from threading import Thread,Event
import requests
from requests.auth import HTTPDigestAuth
from datetime import date,datetime,timedelta
import json
import breeze_resources
import os
import copy 
from MyCalendar import *

url = "https://gateway.eu1-int.mindsphere.io/api/assetmanagement/v3/assettypes"
myToken = 'eyJhbGciOiJSUzI1NiIsImprdSI6Imh0dHBzOi8vZHRjbHhpbnQucGlhbS5ldTEtaW50Lm1pbmRzcGhlcmUuaW8vdG9rZW5fa2V5cyIsImtpZCI6ImtleS1pZC02IiwidHlwIjoiSldUIn0.eyJqdGkiOiI3NWMzYjMwNjA3N2Q0NDZjYjFkZGI4NDZjOTYxNDBmMiIsInN1YiI6InRlY2h1c2VyMS1kdGNseGludCIsInNjb3BlIjpbIm1kc3A6Y29yZTpBZG1pbjNyZFBhcnR5VGVjaFVzZXIiXSwiY2xpZW50X2lkIjoidGVjaHVzZXIxLWR0Y2x4aW50IiwiY2lkIjoidGVjaHVzZXIxLWR0Y2x4aW50IiwiYXpwIjoidGVjaHVzZXIxLWR0Y2x4aW50IiwiZ3JhbnRfdHlwZSI6ImNsaWVudF9jcmVkZW50aWFscyIsInJldl9zaWciOiI4OWQxNzgzIiwiaWF0IjoxNjg2NjUwNDA3LCJleHAiOjE2ODY2NTIyMDcsImlzcyI6Imh0dHBzOi8vZHRjbHhpbnQucGlhbS5ldTEtaW50Lm1pbmRzcGhlcmUuaW8vb2F1dGgvdG9rZW4iLCJ6aWQiOiJkdGNseGludCIsImF1ZCI6WyJ0ZWNodXNlcjEtZHRjbHhpbnQiXSwidGVuIjoiZHRjbHhpbnQiLCJzY2hlbWFzIjpbInVybjpzaWVtZW5zOm1pbmRzcGhlcmU6aWFtOnYxIl0sImNhdCI6ImNsaWVudC10b2tlbjp2MSJ9.bxwT5q7RKhfUWjZw40XPYVi_gDYua_7SPRL2ZhAaHqF5S6SZXfGCUhDKnnjEnZoBtpBYfq8VpA9rXDzQ8At_3jahw0IZ3V-HZ_kLP07qoDAf5TeaulZeh2Fc5jkgq5-b7-U12mVz1NE5r8Jzft9ynvZZX3_LJcS_MwULaO7qsF6HzZqokfns_LEqQAT9UtxaFa-jWztcMCXFQgFLcDZhWk2O5T4TFT7s0p08qhtWLOs1-0sGPitE4nyccdK2cD4LfYnA-erOCuaNpZI0yY-vCADqxJV3Yp66HZCuUzz2n4Syb-iIFRvybi5G7ytvssML46Zs9mFQJ3gMz3W_5JcuLw'
head1 = {'Authorization': 'Token {}'.format(myToken)}
head2 = {'Authorization': 'Bearer {}'.format(myToken)}
head3 = {'Authorization': 'Basic dGVjaHVzZXIxLWR0Y2x4aW50OjFmY2hoaGQ3Yi1iZDgxLTQyYTctYjkxZC0wM2VkMDQ2MjM0YzI='}
head4 = {
    'Authorization': 'Bearer {}'.format(myToken),
    'Content-type': 'application/json',
    'x-user-emailid': 'girish.lande@siemens.com',
    'Accept': 'text/plain',
    'Cookie':"AMCV_EFB35E09512D2A530A490D4D%40AdobeOrg=1099438348%7CMCMID%7C36839318034881774821110646055937035392%7CvVersion%7C2.1.0; ste_vi=vi_fv%3A1661748619689%7Cvi%3Aa526910528edae35a7da57808c1b30d7; REGION-SESSION=e238f9d0-8713-4011-b76f-ac48410581301cda8840; XSRF-TOKEN=295db711-735f-4621-a578-1435f47e7d36; SESSION=OTQzZjZmYTEtM2VhNC00Zjk0LTlkYzktYzJmZGJiOWEyYTZk",
    'X-XSRF-TOKEN': "295db711-735f-4621-a578-1435f47e7d36"
    }

tokenCount = 1
__location__ = os.path.realpath(os.path.join(os.getcwd(), os.path.dirname(__file__)))

def refreshToken():
   global myToken
   global head1
   global head2
   global tokenCount
   head1 = {'Authorization': 'Token {}'.format(myToken)}
   head2 = {'Authorization': 'Bearer {}'.format(myToken)}
   #print("token updated:",str(tokenCount))
   tokenCount = tokenCount + 1

def updateToken():
   #print("my thread")
   url = "https://dtclxint.piam.eu1-int.mindsphere.io/oauth/token?grant_type=client_credentials"
   myResponse = requests.get(url,headers=head3)
   if(myResponse.ok):
      jData = json.loads(myResponse.content)
      #print("New Token:")
      #print(jData['access_token'])
      global myToken
      myToken = jData['access_token']
      refreshToken()
   else:
      print(myResponse.status_code)
      print("Timer token failed!!") 

class ComboBox(QComboBox):
    popupAboutToBeShown = pyqtSignal()

    def showPopup(self):
        self.popupAboutToBeShown.emit()
        super(ComboBox, self).showPopup()

class MyThread(Thread):
    def __init__(self, event):
        Thread.__init__(self)
        self.stopped = event

    def run(self):
        while not self.stopped.wait(5):
           updateToken()   


class AggregateInfo:
   def __init__(self) -> None:
      self.id = ""
      self.tennantID = ""
      self.creator = ""
      self.creationdate = ""
      self.physicalvariable = ""



class stackedExample(QWidget):

   def __init__(self):
      super(stackedExample, self).__init__()
      self.leftlist = QListWidget ()
      
      self.leftlist.insertItem (0, '1 Get new Access Token' )
      self.leftlist.insertItem (1, '2 Get all Asset Types' )
      self.leftlist.insertItem (2, '3 Get all Digital Twin Template Models' )
      self.leftlist.insertItem (3, '4 Get Digital Twin Template using DTT Model ID' )
      self.leftlist.insertItem (4, '5 Get Digital Twin Template using NX part ID' )
      self.leftlist.insertItem (5, '6 Create Digital Twin Template' )
      self.leftlist.insertItem (6, '7 Update Digital Twin Template' )
      self.leftlist.insertItem (7, '8 Get All aggregates for DT Model' )
      self.leftlist.insertItem (8, '9 Create aggregates' )
      self.leftlist.insertItem (9, '10 Create Sensor Data' )

      sizepolicyleft = QSizePolicy(QSizePolicy.Preferred,QSizePolicy.Preferred)
      sizepolicyleft.setHorizontalStretch(1)
      self.leftlist.setSizePolicy(sizepolicyleft)
		
      self.stackpagesCount = 10
      self.stacks = []
      for i in range(0,self.stackpagesCount):
         stack = QWidget()
         self.stacks.append(stack)
		
      self.stack0UI()
      self.stack1UI()
      self.stack2UI()
      self.stack3UI()
      self.stack4UI()
      self.stack5UI()
      self.stack7UI()
      self.stack8UI()
      self.stack9UI()

      self.Stack = QStackedWidget (self)

      for i in range(0,self.stackpagesCount):
         self.Stack.addWidget(self.stacks[i])
      

      sizepolicyright = QSizePolicy(QSizePolicy.Preferred,QSizePolicy.Preferred)
      sizepolicyright.setHorizontalStretch(3)
      self.Stack.setSizePolicy(sizepolicyright)

      hbox = QHBoxLayout(self)
      hbox.addWidget(self.leftlist)
      hbox.addWidget(self.Stack)

      self.setLayout(hbox)
      self.leftlist.currentRowChanged.connect(self.display)
      self.setGeometry(300, 50, 10,10)
      self.setWindowTitle('NX Mindsphere REST api')
      self.show()

      self.stopFlag = Event()
      self.thread = MyThread(self.stopFlag)
      self.thread.start()

   def closeEvent(self, event):
        print("closing application")
        self.stopFlag.set()

   def stack0UI(self):
      layout = QVBoxLayout()
      self.getTokenBtn = QPushButton("Get Token")
      self.getTokenBtn.clicked.connect(self.getTokenFunc)
      self.tokenlist = QTextEdit()
      self.tokenlist.resize(300,120)
      layout.addWidget(self.getTokenBtn)
      layout.addWidget(QLabel("Token"))
      layout.addWidget(self.tokenlist)
      layout.addWidget(QWidget(),stretch=1)
      self.stacks[0].setLayout(layout)

   def stack1UI(self):
      layout = QVBoxLayout()
      self.getAssetsBtn = QPushButton("Get Assets")
      self.getAssetsBtn.clicked.connect(self.getAssetsFunc)
      self.assetids = []
      self.assetslist = QListWidget()
      self.assetslist.itemDoubleClicked.connect(self.displayAssetInfoFunc)
      layout.addWidget(self.getAssetsBtn)
      layout.addWidget(QLabel("Asset Types (Double click to see details)"))
      layout.addWidget(self.assetslist)
      self.assetInfoTable = QTableWidget()
      self.assetInfoTable.setColumnCount(5)
      self.assetInfoTable.setHorizontalHeaderLabels(["Variable Name","Unit","DataType","AspectID","AspectName"])
      self.assetInfoTable.horizontalHeader().setStretchLastSection(True)
      self.assetInfoTable.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
      layout.addWidget(self.assetInfoTable)
      self.assetInfo = QTextEdit()
      layout.addWidget(self.assetInfo)
      self.stacks[1].setLayout(layout)
		
   def stack2UI(self):
      layout = QVBoxLayout()
      self.getDTModelsBtn = QPushButton("Get DTT models")
      self.getDTModelsBtn.clicked.connect(self.getDTModelsFunc)
      self.dttids = []
      self.dtmodelslist = QListWidget()
      self.dtmodelslist.setContextMenuPolicy(Qt.CustomContextMenu)
      self.dtmodelslist.customContextMenuRequested.connect(self.showDTTMenu)
      self.dtmodelslist.itemDoubleClicked.connect(self.displayDTTInfoFunc)
      self.dtmodelslist.item
      self.createDTModelWidget()
      self.dtmodelstext = QTextEdit()
      self.dtmodelslabel = QLabel("DT Models")
      layout.addWidget(self.getDTModelsBtn)
      layout.addWidget(self.dtmodelslabel)
      layout.addWidget(self.dtmodelslist)
      layout.addWidget(self.dtmodelbyIDWidget)
      self.stacks[2].setLayout(layout)
		
   def createDTModelWidget(self):
      self.dtmodelbyIDWidget = QWidget()
      layout = QVBoxLayout()
      myFont=QFont()
      myFont.setBold(True)
      dtmodeltitle = QLabel("Digital Twin Template Model")
      dtmodeltitle.setFont(myFont)
      layout.addWidget(dtmodeltitle)
      self.dtmodelname = QLabel("Name:")
      self.dtmodelname.setTextInteractionFlags(Qt.TextSelectableByMouse)
      layout.addWidget(self.dtmodelname)
      self.dtmodelID = QLabel("DTT ID:")
      self.dtmodelID.setTextInteractionFlags(Qt.TextSelectableByMouse)
      layout.addWidget(self.dtmodelID)
      self.dtmodeldesc = QLabel("Description:")
      self.dtmodeldesc.setTextInteractionFlags(Qt.TextSelectableByMouse)
      layout.addWidget(self.dtmodeldesc)
      self.nxpartname = QLabel("NX partName:")
      self.nxpartname.setTextInteractionFlags(Qt.TextSelectableByMouse)
      layout.addWidget(self.nxpartname)
      self.nxpartID = QLabel("NX partID:")
      self.nxpartID.setTextInteractionFlags(Qt.TextSelectableByMouse)
      layout.addWidget(self.nxpartID)
      layout.addWidget(QLabel("Parameter Map:"))
      self.paramtable = QTableWidget()
      self.paramtable.setColumnCount(3)
      self.paramtable.setHorizontalHeaderLabels(["Physical Name","Virtual Name","Aspect ID"])
      self.paramtable.horizontalHeader().setStretchLastSection(True)
      self.paramtable.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
      self.paramtable.setContextMenuPolicy(Qt.CustomContextMenu) 
      self.paramtable.customContextMenuRequested.connect(self.showParamOptions)
      self.paramtable.viewport().installEventFilter(self)

      layout.addWidget(self.paramtable)
      layout.addWidget(QWidget(),stretch=1)
      self.dtmodelbyIDWidget.setLayout(layout)

   def stack3UI(self):
      layout = QVBoxLayout()
      self.getDTModelByIDBtn = QPushButton("Get DTT model By ID")
      self.getDTModelByIDBtn.clicked.connect(self.getDTModelByIDFunc)
      self.dtmodelbyIDlist = QTextEdit()
      layout.addWidget(QLabel("Enter Digital Twin Template Model ID:"))
      self.dtmodelbyID_id = QLineEdit()
      layout.addWidget(self.dtmodelbyID_id)
      layout.addWidget(self.getDTModelByIDBtn)
      layout.addWidget(self.dtmodelbyIDlist)
      self.stacks[3].setLayout(layout)

   def stack4UI(self):
      layout = QVBoxLayout()
      self.getDTModelByNXIDBtn = QPushButton("Get DTT model By NX Part ID")
      self.getDTModelByNXIDBtn.clicked.connect(self.getDTModelByNXIDFunc)
      self.dtmodelbyNXIdText = QTextEdit()
      
      layout.addWidget(QLabel("Enter NX assembly Model ID:"))
      self.dtmodelbyNXID_id = QLineEdit()
      layout.addWidget(self.dtmodelbyNXID_id)
      layout.addWidget(self.getDTModelByNXIDBtn)
      layout.addWidget(QLabel("DT Model"))
      layout.addWidget(self.dtmodelbyNXIdText)
		
      self.stacks[4].setLayout(layout)

   def createParamMapWidget(self):
      layout = QHBoxLayout()
      table1title = QLabel("Variables")
      layout.addWidget(table1title)
      self.tw1 = QTableWidget()
      self.tw1.setRowCount(0)
      self.tw1.setColumnCount(2)
      self.tw1.setHorizontalHeaderLabels(["Variable Name","Datatype"])
      self.tw1.horizontalHeader().setStretchLastSection(True)
      self.tw1.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
      layout.addWidget(self.tw1)
      table2title = QLabel("Parameters")
      layout.addWidget(table2title)
      self.tw2 = QTableWidget()
      self.tw2.setRowCount(4)
      self.tw2.setColumnCount(2)
      self.tw2.setHorizontalHeaderLabels(["Parameter Name","Datatype"])
      self.tw2.horizontalHeader().setStretchLastSection(True)
      self.tw2.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
      layout.addWidget(self.tw2)
      self.newParamMapWidget.setLayout(layout)

   def createParamMappedWidget(self):
      layout = QHBoxLayout()
      table1title = QLabel("Map data")
      layout.addWidget(table1title)
      self.tw3 = QTableWidget()
      self.tw3.setRowCount(0)
      self.tw3.setColumnCount(2)
      self.tw3.setHorizontalHeaderLabels(["Variable Name","Parameter Name"])
      self.tw3.horizontalHeader().setStretchLastSection(True)
      self.tw3.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
      layout.addWidget(self.tw3)
      self.tw3Add = QPushButton("Add Entry")
      self.tw3Add.clicked.connect(self.AddMapEntry)
      layout.addWidget(self.tw3Add)
      self.tw3Remove = QPushButton("Remove Entry")
      self.tw3Remove.clicked.connect(self.RemoveMapEntry)
      layout.addWidget(self.tw3Remove)
      layout.addWidget(QWidget(),stretch=1)
      self.newParamMappedWidget.setLayout(layout)

   def stack5UI(self):
      layout = QVBoxLayout()
      label1 = QLabel("Create Digital Twin Template Model")
      myFont=QFont()
      myFont.setBold(True)
      label1.setFont(myFont)
      layout.addWidget(label1)

      layout.addWidget(QLabel("Name:"))
      self.newDTName = QLineEdit()
      #self.newDTName.textChanged.connect(self.newDTNameChanged)
      layout.addWidget(self.newDTName)
      layout.addWidget(QLabel("Description:"))
      self.newDTDesc = QLineEdit()
      layout.addWidget(self.newDTDesc)
      layout.addWidget(QLabel("Asset Type:"))
      self.newAssetType = ComboBox()
      self.newAssetType.popupAboutToBeShown.connect(self.loadAssetTypeFunc)
      self.newAssetType.currentIndexChanged.connect(self.loadAssetVariableFunc)
      layout.addWidget(self.newAssetType)
      layout.addWidget(QLabel("Virtual Physical Map:"))
      self.newParamMapWidget = QWidget()
      self.createParamMapWidget()
      layout.addWidget(self.newParamMapWidget)
      layout.addWidget(QLabel("Available:"))
      self.newParamMappedWidget = QWidget()
      self.createParamMappedWidget()
      layout.addWidget(self.newParamMappedWidget)

      self.createDTBtn = QPushButton("Create Digital twin template")
      self.createDTBtn.clicked.connect(self.createDTTFunc)
      layout.addWidget(self.createDTBtn)
      layout.addWidget(QLabel("Result:"))
      self.newDTResult = QTextEdit()
      layout.addWidget(self.newDTResult)
      self.stacks[5].setLayout(layout)   

   def stack7UI(self):
      layout = QVBoxLayout()
      layout.addWidget(QLabel("Enter Digital Twin Template Model ID:"))
      self.dtmodelID_text = QLineEdit()
      layout.addWidget(self.dtmodelID_text)
      self.getAggregatesFromDTBtn = QPushButton("Get all Aggregates of DTT model")
      self.getAggregatesFromDTBtn.clicked.connect(self.getAggregatesFromDTBtnFunc)
      layout.addWidget(self.getAggregatesFromDTBtn)
      self.dtaggregatesTable = QTableWidget()
      self.dtaggregatesTable.itemDoubleClicked.connect(self.onAggregateItemDoubleClicked)
      self.dtaggregatesTable.setContextMenuPolicy(Qt.CustomContextMenu) 
      self.dtaggregatesTable.customContextMenuRequested.connect(self.showAggregateOptions)
      self.dtaggregatesTable.setColumnCount(6)
      self.dtaggregatesTable.setHorizontalHeaderLabels(["ID","tenantId","creator","creationDate","physicalVariable","Status"])
      self.dtaggregatesTable.horizontalHeader().setStretchLastSection(True)
      self.dtaggregatesTable.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
      
      self.dtaggregatesTable.viewport().installEventFilter(self)
      
      layout.addWidget(self.dtaggregatesTable)
      self.dtAGDetailsText = QTextEdit()
      layout.addWidget(self.dtAGDetailsText,stretch=1)
      self.stacks[7].setLayout(layout)

   def display(self,i):
      self.Stack.setCurrentIndex(i)

   def getTokenFunc(self):
      url = "https://dtclxint.piam.eu1-int.mindsphere.io/oauth/token?grant_type=client_credentials"
      myResponse = requests.get(url,headers=head3)
      if(myResponse.ok):
        jData = json.loads(myResponse.content)
        tokentext = jData['access_token']
        self.tokenlist.setText(tokentext)
        cb = QApplication.clipboard()
        cb.clear(mode=cb.Clipboard )
        cb.setText(tokentext, mode=cb.Clipboard)
        #self.tokenlist.setText(json.dumps(jData))
      else:
         print ("Response code:",myResponse.status_code)

      
   def DeleteDTT(self):
      currentindex = self.dtmodelslist.currentIndex().row()
      dttId = self.dttids[currentindex]

      # First, get 'If-Match' number of the selected DTT. Then use that number to delete DTT
      global head2
      url = 'https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/' + dttId
      myResponse = requests.get(url, headers=head2)
      self.updateDTTModelInfo(myResponse)  
      ifmatchnumber=-1
      if(myResponse.ok):
         jheader = myResponse.headers
         ifmatchnumber = jheader['If-Match']
      else:
         print("Failed to get DTT Info. Response code: ",myResponse.status_code)   
         return

      headcopy = copy.deepcopy(head2)
      headcopy['If-Match'] = ifmatchnumber
      url = 'https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/' + dttId
      myResponse = requests.delete(url, headers=headcopy)
      if (myResponse.ok):
         print("deleted selected DTT!")
         self.clearDTTModelInfo()
         del self.dttids[currentindex]
         listItems=self.dtmodelslist.selectedItems()
         if not listItems: return        
         for item in listItems:
            self.dtmodelslist.takeItem(self.dtmodelslist.row(item))
      else:
         print("Failed to delete:",myResponse.status_code)  

   def showDTTMenu(self,pos):
      globalPos = self.dtmodelslist.mapToGlobal(pos)
      menu = QMenu()
      menu.addAction('Delete DTT',self.DeleteDTT)
      menu.addAction('Show Aggregates',self.ShowAggregateAction)
      if menu.exec_(globalPos):
         item = self.dtmodelslist.itemAt(pos)
         print(item.text())
   
   def ShowAggregateAction(self):
      currentindex = self.dtmodelslist.currentIndex().row()
      dttId = self.dttids[currentindex]
      self.dtmodelID_text.setText(dttId)
      self.leftlist.setCurrentRow(7)
      self.getAggregatesFromDTBtnFunc()
      

   def displayDTTInfoFunc(self):
      currentindex = self.dtmodelslist.currentIndex().row()
      dttId = self.dttids[currentindex]
      global head2
      url = 'https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/' + dttId
      myResponse = requests.get(url, headers=head2)
      self.dtmodelbyID_id.setText(dttId)
      self.updateDTTModelInfo(myResponse)  
      if(myResponse.ok):
        jData = json.loads(myResponse.content)
        self.dtmodelstext.setText(json.dumps(jData,indent=2))

   def displayAssetInfoFunc(self):
      currentindex = self.assetslist.currentIndex().row()
      assetId = self.assetids[currentindex]
      global head2
      url = 'https://gateway.eu1-int.mindsphere.io/api/assetmanagement/v3/assettypes/' + assetId
      myResponse = requests.get(url, headers=head2)
      if(myResponse.ok):
         jData = json.loads(myResponse.content)
         self.assetInfo.setText(json.dumps(jData,indent=4))

         self.assetInfoTable.clearContents()
         self.assetInfoTable.setRowCount(0)
         rowTotalHeight = self.assetInfoTable.horizontalHeader().height() + 4
         rc = 0
         aspects = jData['aspects']
         for a in aspects:
               aa = a['aspectType']
               aid = a['aspectId']
               aname = a['name']
               for p in aa['variables']:
                     vname = p['name']
                     vunit = p['unit']
                     vtype = p['dataType']
                     
                     self.assetInfoTable.insertRow(self.assetInfoTable.rowCount())
                     self.assetInfoTable.setItem(rc,0,QTableWidgetItem(vname))
                     self.assetInfoTable.setItem(rc,1,QTableWidgetItem(vunit))
                     self.assetInfoTable.setItem(rc,2,QTableWidgetItem(vtype))
                     self.assetInfoTable.setItem(rc,3,QTableWidgetItem(aid))
                     self.assetInfoTable.setItem(rc,4,QTableWidgetItem(aname))
                     rowheight = self.assetInfoTable.rowHeight(rc)
                     rowTotalHeight+=rowheight
                     rc+=1

         self.assetInfoTable.setMaximumHeight(rowTotalHeight) 

   def loadAssetTypeFunc(self):
      assetTypesNum = self.newAssetType.count()
      if assetTypesNum>0:
         return
      assetlistNum = self.assetslist.count()
      if assetlistNum==0:
         self.getAssetsFunc()
         for i in range(self.assetslist.count()):
            self.newAssetType.addItem(self.assetslist.item(i).text())
            self.newAssetType1.addItem(self.assetslist.item(i).text())
      else:
         for i in range(self.assetslist.count()):
            self.newAssetType.addItem(self.assetslist.item(i).text())
            self.newAssetType1.addItem(self.assetslist.item(i).text())

   def loadAssetVariableFunc(self):
      assetindex = self.newAssetType.currentIndex()
      assetId = self.assetids[assetindex]
      global head2
      url = 'https://gateway.eu1-int.mindsphere.io/api/assetmanagement/v3/assettypes/' + assetId
      myResponse = requests.get(url, headers=head2)
      if(myResponse.ok):
         jData = json.loads(myResponse.content)

         self.tw1.clearContents()
         self.tw1.setRowCount(0)
         self.tw2.clearContents()
         self.tw2.setRowCount(4)
         self.tw3.clearContents()
         self.tw3.setRowCount(0)
         rc = 0
         aspects = jData['aspects']
         for a in aspects:
               aa = a['aspectType']
               for p in aa['variables']:
                     vname = p['name']
                     vtype = p['dataType']
                     self.tw1.insertRow(self.tw1.rowCount())
                     self.tw1.setItem(rc,0,QTableWidgetItem(vname))
                     self.tw1.setItem(rc,1,QTableWidgetItem(vtype))
                     rc+=1

   # Add an entry in virtual physical map table 
   def AddMapEntry(self):
      r1 = self.tw1.rowCount()
      if r1==0:
         return
      r2 = self.tw2.rowCount()
      if r2==0:
         return
      if len(self.tw1.selectedItems()) == 0:
         return
      if len(self.tw2.selectedItems()) == 0:
         return

      s1 = "NA"
      for item in self.tw1.selectedItems():
         s1 = item.text()
      s2 = "NA"
      for item in self.tw2.selectedItems():
         s2 = item.text()
         
      self.tw3.insertRow(self.tw3.rowCount())
      self.tw3.setItem(self.tw3.rowCount()-1,0,QTableWidgetItem(s1))
      self.tw3.setItem(self.tw3.rowCount()-1,1,QTableWidgetItem(s2))

   def RemoveMapEntry(self):
      for i in self.tw3.selectedIndexes():
         self.tw3.removeRow(i.row())

   def getAssetsFunc(self):
      global head2
      myResponse = requests.get('https://gateway.eu1-int.mindsphere.io/api/assetmanagement/v3/assettypes', headers=head2)
      self.assetslist.clear()    
      self.assetids.clear()
      if(myResponse.ok):
        jData = json.loads(myResponse.content)
        assetcount = 1
        for i in jData['_embedded']['assetTypes']:
            #print(i['name'])
            self.assetslist.addItem(str(assetcount) +" "+ i['name'])
            self.assetids.append(i['id'])
            assetcount += 1

        #Iterate on rest of the pages     
        pagesize = jData['page']['size']
        numrecords = jData['page']['totalElements']
        totalpage = jData['page']['totalPages']
        pagenumber = jData['page']['number']
        #print(f"pagesize:{pagesize} numrecords:{numrecords} totalpages:{totalpage} pagenumber:{pagenumber}")
        while (pagenumber+1)<totalpage:
           url = 'https://gateway.eu1-int.mindsphere.io/api/assetmanagement/v3/assettypes?page=' + str(pagenumber+1)
           myResponse = requests.get(url, headers=head2)
           if myResponse.ok:
              jData = json.loads(myResponse.content)
              for i in jData['_embedded']['assetTypes']:
                 #print(i['name'])
                 self.assetslist.addItem(str(assetcount) + " " + i['name'])
                 self.assetids.append(i['id'])
                 assetcount += 1
              pagenumber += 1
           else:
              print ("Response code:",myResponse.status_code)
              break   
      else:
         print ("Response code:",myResponse.status_code)

   def getDTModelsFunc(self):
      global head2
      myResponse = requests.get('https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels?page=0&size=10', headers=head2)
      #myResponse = requests.get('https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels', headers=head2)
      self.dtmodelstext.clear()    
      self.dtmodelslist.clear()
      self.dttids.clear()

      if(myResponse.ok):
        jData = json.loads(myResponse.content)

        cnt = 1
        for i in jData['_embedded']['dtModels']:
            idd = i['id']
            name = i['name']
            desc = i['description']
            line = str(cnt)
            self.dttids.append(idd)
            
            if type(name) is str:
               line+= ' '
               line+=name
            self.dtmodelslist.addItem(line)
            cnt += 1

        #Iterate on rest of the pages     
        pagesize = jData['page']['size']
        numrecords = jData['page']['totalElements']
        totalpage = jData['page']['totalPages']
        pagenumber = jData['page']['number']
        self.dtmodelslabel.setText("DT models (#{})".format(numrecords))
        #print(f"pagesize:{pagesize} numrecords:{numrecords} totalpages:{totalpage} pagenumber:{pagenumber}")
        while (pagenumber+1)<totalpage:
           url = 'https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels?page=' + str(pagenumber+1) + '&size=10'
           myResponse = requests.get(url, headers=head2)
           if myResponse.ok:
              jData = json.loads(myResponse.content)
              #print(json.dumps(jData,indent=2))

              for i in jData['_embedded']['dtModels']:
                 idd = i['id']
                 name = i['name']
                 desc = i['description']
                 line = str(cnt)
                 self.dttids.append(idd)
                 
                 if type(name) is str:
                    line+= ' '
                    line+=name
                 self.dtmodelslist.addItem(line)
                 cnt += 1
              pagenumber += 1
           else:
              print ("Response code:",myResponse.status_code)
              break   

      else:
         print ("Response code:",myResponse.status_code)      

   def clearDTTModelInfo(self):
      self.dtmodelname.setText("Name: ")
      self.dtmodeldesc.setText("Description: ")
      self.dtmodelID.setText("DTT ID: ")
      self.nxpartname.setText("NX partName: ")
      self.nxpartID.setText("NX partID: ")
      self.paramtable.clearContents()
      self.paramtable.setRowCount(0)

   def updateDTTModelInfo(self,myResponse):
      self.dtmodelbyIDlist.clear()    
      if(myResponse.ok):
        jData = json.loads(myResponse.content)
        
        name = jData['name']
        desc = jData['description']
        dttid = jData['id']
        if type(name) is str:
           self.dtmodelname.setText("Name: " + name)
        if type(desc) is str:
           self.dtmodeldesc.setText("Description: " + desc)

        if type(dttid) is str:
           self.dtmodelID.setText("DTT ID: " + dttid)

        rc = 0
        self.paramtable.clearContents()
        self.paramtable.setRowCount(0)
        
        rowTotalHeight = self.paramtable.horizontalHeader().height() + 4

        protos = jData['digitalTwinPrototypes']
        for p in protos:
           partname = p['virtualEntityName']
           partid = p['virtualEntityId']
           self.nxpartname.setText("NX partName: " + partname)
           self.nxpartID.setText("NX partID: " + partid)
           for a in p['aspectVariablesMap']:
              aspectID = a['id']
              for v in a['variables']:
                 c1 = v['physicalVariable']
                 c2 = v['virtualVariable']
                 self.paramtable.insertRow(self.paramtable.rowCount())
                 self.paramtable.setItem(rc,0,QTableWidgetItem(c1))
                 self.paramtable.setItem(rc,1,QTableWidgetItem(c2))
                 self.paramtable.setItem(rc,2,QTableWidgetItem(aspectID))
                 rowheight = self.paramtable.rowHeight(rc)
                 rowTotalHeight+=rowheight
                 rc+=1

        self.paramtable.setMaximumHeight(rowTotalHeight) 
        self.dtmodelbyIDlist.setText(json.dumps(jData,indent=2))   
      else:
         print ("Response code:",myResponse.status_code)

   def getDTModelByIDFunc(self):
      modelID = self.dtmodelbyID_id.text()
      if not modelID:
         return
      global head2
      url = "https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/" + self.dtmodelbyID_id.text()
      myResponse = requests.get(url, headers=head2)
      self.updateDTTModelInfo(myResponse)   

   def getDTModelByNXIDFunc(self):
      global head2
      nxpartid = self.dtmodelbyNXID_id.text() #"NXAssyIdentifier"
      filtertext = '{"digitalTwinPrototypes":[{"virtualEntityId":"' + nxpartid + '"}]}'
      url = "https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels?filter=" + filtertext
      myResponse = requests.get(url, headers=head2)
      self.dtmodelbyNXIdText.clear()    
      if(myResponse.ok):
        jData = json.loads(myResponse.content)
        self.dtmodelbyNXIdText.setText(json.dumps(jData,indent=2))
      else:
         print ("Response code:",myResponse.status_code)  

   def showErrorMsg(self,msgtext):
      msg = QMessageBox()
      msg.setIcon(QMessageBox.Critical)
      msg.setText(msgtext)
      msg.setWindowTitle("Error")
      msg.exec_()

   def createDTTFunc(self):
      path = os.path.join(__location__, 'DTT.json')
      if not os.path.isfile(path):
         print("ERROR! DTT.json doesn't exist!")
         return
      f = open(path)
      jData = json.load(f) 
      f.close()  

      path = os.path.join(__location__, 'variable.json')
      if not os.path.isfile(path):
         print("ERROR! variable.json doesn't exist!")
         return
      f = open(path)
      jVariable = json.load(f) 
      f.close()  

      dttname = self.newDTName.text()
      if not dttname:
         self.showErrorMsg("DTT name is empty")
         return

      dttdesc = self.newDTDesc.text()
      if not dttdesc:
         self.showErrorMsg("DTT description is empty")
         return

      jData['name'] = dttname
      jData['description'] = dttdesc
      protos = jData['digitalTwinPrototypes']
      for p in protos:
         p['virtualEntityName'] = "NA"  #NX Part name
         p['virtualEntityId'] = "NA"    #NX Part ID
         for a in p['aspectVariablesMap']:
            for row in range(self.tw3.rowCount()): 
               variablecopy = jVariable.copy()
               v1="physical"
               v2="virtual"
               _item = self.tw3.item(row, 0) 
               if _item:            
                   v1 = self.tw3.item(row, 0).text()
               _item = self.tw3.item(row, 1) 
               if _item:            
                   v2 = self.tw3.item(row, 1).text()    
               variablecopy['physicalVariable'] = v1
               variablecopy['virtualVariable'] = v2
               a['variables'].append(variablecopy)

      jData['digitalTwinPrototypes'] = protos

      #print(json.dumps(jData,indent=2))  
      global head2
      url = "https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels" 
      myResponse = requests.post(url, json=jData, headers=head2)
      if(myResponse.ok):
         jData = json.loads(myResponse.content)
         self.newDTResult.setText(json.dumps(jData,indent=4))
      else:
         print("Response code:",myResponse.status_code) 
         print(myResponse.text)
         self.newDTResult.setText(json.dumps(jData,indent=4))

   def loadExistingDT(self,i):
      dttId = self.dttids[i]
      global head2
      url = 'https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/' + dttId
      myResponse = requests.get(url, headers=head2)
      if(myResponse.ok):
        jData = json.loads(myResponse.content)
        
        desc = jData['description']
        if type(desc) is str:
           self.newDTDesc.setText(desc)

        rc = 0
        self.tw3.clearContents()
        self.tw3.setRowCount(0)
        
        protos = jData['digitalTwinPrototypes']
        for p in protos:
           partname = p['virtualEntityName']
           partid = p['virtualEntityId']
           self.nxpartname.setText("NX partName: " + partname)
           self.nxpartID.setText("NX partID: " + partid)
           for a in p['aspectVariablesMap']:
              aspectID = a['id']
              for v in a['variables']:
                 c1 = v['physicalVariable']
                 c2 = v['virtualVariable']
                 self.tw3.insertRow(self.tw3.rowCount())
                 self.tw3.setItem(rc,0,QTableWidgetItem(c1))
                 self.tw3.setItem(rc,1,QTableWidgetItem(c2))
                 rc+=1
      else:
         print ("Response code:",myResponse.status_code)

   def newDTNameChanged(self):
      if self.dtmodelslist.count()==0:
         self.getDTModelsFunc()
      str = self.newDTName.text()
      for i in range(self.dtmodelslist.count()):
         s = self.dtmodelslist.item(i).text()
         tokns = s.split(' ',1)
         sname = tokns[1]
         if str == sname:
            self.loadExistingDT(i)

   def getAggregatesFromDTBtnFunc(self):
      global head2
      headcopy = copy.deepcopy(head2)
      headcopy['Content-Type'] = 'application/json'
      url = "https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/" + self.dtmodelID_text.text() + "/dtaggregatesJobs"
      myResponse = requests.get(url, headers=headcopy)
      self.dtaggregatesTable.clearContents()
      self.dtaggregatesTable.setRowCount(0)
      
      self.dtAGDetailsText.setText("")
      if (myResponse.ok):
         jData = json.loads(myResponse.content)
         self.dtAGDetailsText.setText(json.dumps(jData,indent=4))
         rc=0
         if '_embedded' in jData:
            if 'dtAggregates' in jData['_embedded']:
               for i in jData['_embedded']['dtAggregates']:
                  self.dtaggregatesTable.insertRow(self.dtaggregatesTable.rowCount())
                  self.dtaggregatesTable.setItem(rc,0,QTableWidgetItem(i['id']))
                  self.dtaggregatesTable.setItem(rc,1,QTableWidgetItem(i['tenantId']))
                  self.dtaggregatesTable.setItem(rc,2,QTableWidgetItem(i['creator']))
                  self.dtaggregatesTable.setItem(rc,3,QTableWidgetItem(i['creationDate']))
                  self.dtaggregatesTable.setItem(rc,4,QTableWidgetItem(i['physicalVariable']))
                  self.dtaggregatesTable.setItem(rc,5,QTableWidgetItem(i['status']['name']))
                  rc+=1
         else:
            self.dtAGDetailsText.setText("NO AGGREGATES FOR THIS DTT!")
      else:
         print(url)
         print("Failed to request aggregates. Status:",myResponse.status_code)

   def loadAggregate(self,agg_id):
      global head2
      headcopy = copy.deepcopy(head2)
      headcopy['Content-Type'] = 'application/json'
      url = "https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/" + self.dtmodelID_text.text() + "/dtaggregatesJobs/" + agg_id
      myResponse = requests.get(url, headers=headcopy)
      if (myResponse.ok):
         jData = json.loads(myResponse.content)
         self.dtAGDetailsText.setText(json.dumps(jData,indent=4))
      else:
         print(url)
         print("Failed to request single aggregate. Status:",myResponse.status_code)

   def onAggregateItemDoubleClicked(self, item):
      agg_id = self.dtaggregatesTable.item(item.row(),0).text()
      self.loadAggregate(agg_id)

   def eventFilter(self, source, event):
      if(event.type() == QEvent.MouseButtonPress and
         event.buttons() == Qt.RightButton):
         if source is self.dtaggregatesTable.viewport():
            item = self.dtaggregatesTable.itemAt(event.pos())
            if item is not None:
               self.menu = QMenu()
               self.menu.addAction("delete",self.DeleteAggregate)         
         elif source is self.paramtable.viewport():
            item = self.paramtable.itemAt(event.pos())
            if item is not None:
               self.menu = QMenu()
               self.menu.addAction("Create Aggregate",self.CreateAggregateAction)     

      return super(stackedExample, self).eventFilter(source, event)

   def showAggregateOptions(self,pos):
      self.menu.exec_(self.dtaggregatesTable.mapToGlobal(pos))   # +++

   def DeleteAggregate(self):
      items = self.dtaggregatesTable.selectedItems()
      if not items: return        
      for item in items:
         r = item.row()
         agg_id = self.dtaggregatesTable.item(r,0).text()
         self.DeleteAggregateByID(agg_id)
         self.dtaggregatesTable.removeRow(r)

   
   def DeleteAggregateByID(self,agg_id):
      # Step1: Get aggregate details to enquire "IF-Match" number 
      global head2
      headcopy = copy.deepcopy(head2)
      headcopy['Content-Type'] = 'application/json'
      url = "https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/" + self.dtmodelID_text.text() + "/dtaggregatesJobs/" + agg_id
      myResponse = requests.get(url, headers=headcopy)
      ifmatchnumber = -1
      if (myResponse.ok):
         jheader = myResponse.headers
         ifmatchnumber = jheader['If-Match']
      else:
         print("Failed to load aggregate, status:",myResponse.status_code)

      # Step2: Delete aggregate 
      headcopy1 = copy.deepcopy(head2)
      headcopy1['If-Match'] = ifmatchnumber
      url = "https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/" + self.dtmodelID_text.text() + "/dtaggregatesJobs/" + agg_id
      myResponse = requests.delete(url, headers=headcopy1)
      if (myResponse.ok):
         print("Deleted aggregate")
      else:
         print("failed to delete aggregate. status:",myResponse.status_code)

   def stack8UI(self):
      layout = QVBoxLayout()

      layout.addWidget(QLabel("DTT ID:"))
      self.dttIDtext = QLineEdit()
      layout.addWidget(self.dttIDtext)
      layout.addWidget(QLabel("Physical Aspect ID:"))
      self.physicalAspectIDtext = QLineEdit()
      layout.addWidget(self.physicalAspectIDtext)
      layout.addWidget(QLabel("Physical Variable:"))
      self.physicalVariabletext = QLineEdit()
      layout.addWidget(self.physicalVariabletext)
      layout.addWidget(QLabel("Aggregate Name:"))
      self.aggNametext = QLineEdit()
      layout.addWidget(self.aggNametext)
      layout.addWidget(QLabel("Start TimeStamp:"))
      self.startTimeEdit = QDateTimeEdit(QDate.currentDate().addDays(-2))
      self.startTimeEdit.setMaximumWidth(300)
      self.startTimeEdit.setCalendarPopup(True)
      self.startTimeEdit.setDisplayFormat("dd-MM-yyyy   hh:mm:ss")
      layout.addWidget(self.startTimeEdit)
      layout.addWidget(QLabel("End TimeStamp:"))
      self.endTimeEdit = QDateTimeEdit(QDate.currentDate().addDays(-1))
      self.endTimeEdit.setMaximumWidth(300)
      self.endTimeEdit.setCalendarPopup(True)
      self.endTimeEdit.setDisplayFormat("dd-MM-yyyy   hh:mm:ss")
      layout.addWidget(self.endTimeEdit)
      self.createAggBtn = QPushButton("Create Aggregate")
      self.createAggBtn.clicked.connect(self.createAggBtnFunc)
      layout.addSpacing(20)
      layout.addWidget(self.createAggBtn)
      layout.addSpacing(20)
      self.createAggResultText = QTextEdit()
      layout.addWidget(self.createAggResultText)
      layout.addWidget(QWidget(),stretch=1)
      self.stacks[8].setLayout(layout)

   def createAggBtnFunc(self):
      print("--------------------Create aggregate----------------------------")
      path = os.path.join(__location__, 'aggregate.json')
      if not os.path.isfile(path):
         print("ERROR! aggregate.json doesn't exist!")
         return
      f = open(path)
      jData = json.load(f) 
      f.close()  
      t1 = self.startTimeEdit.dateTime().toString("yyyy-mm-ddThh:mm:ss.zzz")
      t2 = self.endTimeEdit.dateTime().toString("yyyy-mm-ddThh:mm:ss.zzz")
      jData['startTimestamp'] = t1
      jData['endTimestamp'] = t2
      jData['physicalAspect'] = self.physicalAspectIDtext.text()
      jData['physicalVariable'] = self.physicalVariabletext.text()
      jData['name'] = self.aggNametext.text()
      print(json.dumps(jData,indent=4))

      global head2
      headcopy = copy.deepcopy(head2)
      headcopy['Content-Type'] = 'application/json'
      url = "https://gateway.eu1-int.mindsphere.io/api/dtclxfoundationapi/v3/core/dtmodels/" + self.dttIDtext.text() + "/dtaggregatesJobs/" 
      myResponse = requests.post(url,json=jData, headers=headcopy)

      if (myResponse.ok):
         print("Success. Aggregate created!")
         jdata = json.loads(myResponse.content)
         self.createAggResultText.setText(json.dumps(jdata,indent=4))
      else:
         print(url)
         print("Failed to create aggregate, status:",myResponse.status_code)

   def showParamOptions(self,pos):
      self.menu.exec_(self.paramtable.mapToGlobal(pos))

   def CreateAggregateAction(self):
      items = self.paramtable.selectedItems()
      if not items: return        
      for item in items:
         r = item.row()
         physicalVariable = self.paramtable.item(r,0).text()
         aspectID = self.paramtable.item(r,2).text()
         self.UpdateAggregateInputFields(physicalVariable,aspectID)
         break
      self.leftlist.setCurrentRow(8)

   def UpdateAggregateInputFields(self,physicalVariable,aspectID):
      print(f"Creating aggregate using variable {physicalVariable} and aspect {aspectID}")
      dtmodelidlabel = self.dtmodelID.text()
      t = dtmodelidlabel.split(':',1)
      dtmodelID = t[1].strip()
      self.dttIDtext.setText(dtmodelID)
      self.physicalAspectIDtext.setText(aspectID)
      self.physicalVariabletext.setText(physicalVariable)
      aggName = datetime.now().strftime('%Y%m%d%H%M%S')
      self.aggNametext.setText("Aggregate_"+aggName)

   def stack9UI(self):
      spacing = 15
      layout = QVBoxLayout()
      layout.addWidget(QLabel("Select Asset Type:"))
      self.newAssetType1 = ComboBox()
      self.newAssetType1.popupAboutToBeShown.connect(self.loadAssetTypeFunc)
      self.newAssetType1.currentIndexChanged.connect(self.loadAssetVariableFunc1)
      layout.addWidget(self.newAssetType1)
      layout.addSpacing(spacing)
      layout.addWidget(QLabel("Set Variable values:"))
      self.assetInfoTable1 = QTableWidget()
      self.assetInfoTable1.setColumnCount(6)
      self.assetInfoTable1.setHorizontalHeaderLabels(["Variable Name","Unit","DataType","AspectID","AspectName","New Value"])
      self.assetInfoTable1.horizontalHeader().setStretchLastSection(True)
      self.assetInfoTable1.horizontalHeader().setSectionResizeMode(QHeaderView.Stretch)
      layout.addWidget(self.assetInfoTable1)
      layout.addSpacing(spacing)
      layout.addWidget(QLabel("Start TimeStamp:"))
      self.startTimeEdit1 = QDateTimeEdit(QDate.currentDate().addDays(-2))
      self.startTimeEdit1.setMaximumWidth(300)
      self.startTimeEdit1.setCalendarPopup(True)
      self.startTimeEdit1.setDisplayFormat("dd-MM-yyyy   hh:mm:ss")
      layout.addWidget(self.startTimeEdit1)
      layout.addWidget(QLabel("End TimeStamp:"))
      self.endTimeEdit1 = QDateTimeEdit(QDate.currentDate())
      self.endTimeEdit1.setMaximumWidth(300)
      self.endTimeEdit1.setCalendarPopup(True)
      self.endTimeEdit1.setDisplayFormat("dd-MM-yyyy   hh:mm:ss")
      layout.addWidget(self.endTimeEdit1)
      layout.addSpacing(spacing)
      self.createSensorDataBtn = QPushButton("Create Sensor Data")
      self.createSensorDataBtn.clicked.connect(self.createSensorDataBtnFunc)
      layout.addWidget(self.createSensorDataBtn)
      self.exportSensorDataBtn = QPushButton("Export Sensor Data")
      self.exportSensorDataBtn.clicked.connect(self.exportSensorDataBtnFunc)
      layout.addWidget(self.exportSensorDataBtn)

      layout.addSpacing(spacing)
      self.sensorDataText = QTextEdit()
      layout.addWidget(self.sensorDataText,stretch=1)
      self.stacks[9].setLayout(layout)  

   def loadAssetVariableFunc1(self):
      assetindex = self.newAssetType1.currentIndex()
      assetId = self.assetids[assetindex]

      global head2
      url = 'https://gateway.eu1-int.mindsphere.io/api/assetmanagement/v3/assettypes/' + assetId
      myResponse = requests.get(url, headers=head2)
      if(myResponse.ok):
         jData = json.loads(myResponse.content)
         self.assetInfo.setText(json.dumps(jData,indent=4))

         self.assetInfoTable1.clearContents()
         self.assetInfoTable1.setRowCount(0)
         rc = 0
         aspects = jData['aspects']
         for a in aspects:
               aa = a['aspectType']
               aid = a['aspectId']
               aname = a['name']
               for p in aa['variables']:
                     vname = p['name']
                     vunit = p['unit']
                     vtype = p['dataType']
                     
                     self.assetInfoTable1.insertRow(self.assetInfoTable1.rowCount())
                     self.assetInfoTable1.setItem(rc,0,QTableWidgetItem(vname))
                     self.assetInfoTable1.setItem(rc,1,QTableWidgetItem(vunit))
                     self.assetInfoTable1.setItem(rc,2,QTableWidgetItem(vtype))
                     self.assetInfoTable1.setItem(rc,3,QTableWidgetItem(aid))
                     self.assetInfoTable1.setItem(rc,4,QTableWidgetItem(aname))
                     rc+=1

   def daterange(self,start_date, end_date):
      for n in range(int((end_date - start_date).days)):
         yield start_date + timedelta(n)

   def createSensorDataBtnFunc(self):
      self.sensorDataText.setText("")
      data = {}
      
      for i in range(0,self.assetInfoTable1.rowCount()):
         varname = self.assetInfoTable1.item(i,0)
         newvalue = self.assetInfoTable1.item(i,5)
         if newvalue:
            str = newvalue.text()
            varname = varname.text()
            if str:
               if str.isnumeric():
                  data[varname] = int(str)
               else:
                  data[varname] = str

      if not data:
         self.showErrorMsg("Please update variable values")
         return
      
      json_data_list = []
      start_date = self.startTimeEdit1.dateTime().toPyDateTime()
      end_date = self.endTimeEdit1.dateTime().toPyDateTime()
      
      for single_date in self.daterange(start_date, end_date):
         timestr = single_date.strftime("%Y_%m_%dT%H:%M:%S")
         datacopy = copy.deepcopy(data)
         datacopy['Time'] = timestr
         json_data_list.append(datacopy)

      self.sensorDataText.setText(json.dumps(json_data_list,indent=2))

   def exportSensorDataBtnFunc(self):
      data = self.sensorDataText.toPlainText()
      if data == "":
         self.showErrorMsg("No data to export")
         return
      options = QFileDialog.Options()
      options |= QFileDialog.DontUseNativeDialog
      file_name, _ = QFileDialog.getSaveFileName(self,"Save File","","All Files(*);;Text Files(*.txt)",options = options)
      if file_name:
        f = open(file_name, 'w')
        f.write(data)
        f.close()


def main():
   app = QApplication(sys.argv)

   darkTheme = True
   if (darkTheme):
      file = QFile(":/dark/stylesheet.qss")
      file.open(QFile.ReadOnly | QFile.Text)
      stream = QTextStream(file)
      app.setStyleSheet(stream.readAll())
            
   updateToken()

   screen = app.primaryScreen()
   size = screen.size()
   
   ex = stackedExample()
   ex.showMaximized()
   #ex.resize(int(size.width()*.8),int(size.height()*.8))

   sys.exit(app.exec_())
	
if __name__ == '__main__':
   main()