from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
import re
import os
from pathlib import Path
from threading import Thread
from imagetableview import ImageTableView
from imagecreator import *

from person import Person
    
class Main(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)

        self.applyBtn = QPushButton('OK')
        self.applyBtn.clicked.connect(self.onApply)
        self.nametext = QLineEdit()
        self.addresstext = QLineEdit()
        self.messagetext = QLineEdit()
        self.tableview = ImageTableView()
        self.xoffset = QLineEdit()
        self.yoffset = QLineEdit()
        self.xoffset.textChanged.connect(self.onApply)
        self.yoffset.textChanged.connect(self.onApply)
        
        self.grid_layout = QGridLayout()
        self.grid_layout.addWidget(QLabel("Name:"), 2, 1, 1, 1)
        self.grid_layout.addWidget(self.nametext, 2, 2, 1, 1)
        
        self.grid_layout.addWidget(QLabel("Address:"), 3, 1, 1, 1)
        self.grid_layout.addWidget(self.addresstext, 3, 2, 1, 1)
        self.grid_layout.addWidget(QLabel("Message:"), 4, 1, 1, 1)
        self.grid_layout.addWidget(self.messagetext, 4, 2, 1, 1)
        self.grid_layout.addWidget(self.applyBtn, 5, 2, 1, 1)
        self.grid_layout.addWidget(self.tableview,6,2,1,1)
        self.grid_layout.addWidget(QLabel("X Offset:"), 7, 1, 1, 1)
        self.grid_layout.addWidget(self.xoffset, 7, 2, 1, 1)
        self.grid_layout.addWidget(QLabel("Y Offset:"), 8, 1, 1, 1)
        self.grid_layout.addWidget(self.yoffset, 8, 2, 1, 1)
        
        self.grid_layout.addWidget(QWidget(),9,2,1,1)
        
        self.outputimagelabel = QLabel()
        self.grid_layout.addWidget(self.outputimagelabel,10,2,1,1)
        self.grid_layout.addWidget(QWidget(),11,2,1,1)
        
        # initializing layout
        self.title = 'Image creator'
        self.setWindowTitle(self.title)
        self.setGeometry(0, 0, 1024, 576)
        self.showMaximized()
        self.centralwidget = QWidget()
        self.centralwidget.setLayout(self.grid_layout)
        self.setCentralWidget(self.centralwidget)
        
    def onApply(self):
        person = Person()
        person.name = self.nametext.text()
        person.message = self.messagetext.text()
        person.address = self.addresstext.text()
        if (person.isok()):
            print("name:",person.name, "file:",self.tableview.selecteditem.title)
            
            imagecreator = F1()
            s1 = self.xoffset.text()
            if s1.lstrip("-").isnumeric():
                imagecreator.xoff = int(s1)
            s2 = self.yoffset.text()
            if s2.lstrip("-").isnumeric():
                imagecreator.yoff = int(s2)
            imagecreator.createimage(person=person)
        
            if os.path.isfile(imagecreator.output_image):
                pic = self.outputimagelabel
                pic.setPixmap(QPixmap(imagecreator.output_image))
                pic.show() # You were missing this.
                
if __name__ == '__main__':
    import sys
    app = QApplication(sys.argv)
    main = Main()
    
    screen = app.primaryScreen()
    size = screen.size()
    #main.resize(int(size.width()*.4),int(size.height()*.4))
    
    main.showMaximized()
    app.exec_()