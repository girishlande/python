# ----------------------------------------
# UI application for using requirement parser 
# ----------------------------------------

import sys
from PyQt5 import QtGui
from PyQt5.QtWidgets import *
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from linetextwidget import *
from ReadPDF import readPDF

class Color(QWidget):

    def __init__(self, color):
        super(Color, self).__init__()
        self.setAutoFillBackground(True)

        palette = self.palette()
        palette.setColor(QPalette.Window, QColor(color))
        self.setPalette(palette)
        
class RequirementParserDialog(QWidget):
   def __init__(self, parent=None):
      super(RequirementParserDialog, self).__init__(parent)

      # First Row. Top horizontal layout 
      self.requirementButton = QPushButton("Import Requirement document")
      self.requirementButton.clicked.connect(self.getfiles)
      label2 = QLabel("Output")
      label2.setAlignment(Qt.AlignHCenter)
      h1 = QHBoxLayout()
      h1.addWidget(self.requirementButton)
      h1.addWidget(label2)

      # Second row 
      self.requirementText = QTextEdit()
      self.outputLayout = QVBoxLayout()
      label3 = QLabel("a")
      label3.setAlignment(Qt.AlignHCenter)
      self.outputLayout.addWidget(label3)
      v_widget = QWidget()
      v_widget.setLayout(self.outputLayout)
      h2 = QHBoxLayout()
      h2.addWidget(self.requirementText)
      h2.addWidget(v_widget)
      h2.addStretch(1)
      

      self.convertButton = QPushButton("CONVERT")
      self.convertButton.clicked.connect(self.parseText)

      vbox = QVBoxLayout()

      vbox.addLayout(h1)
      vbox.addLayout(h2)
      vbox.addWidget(self.convertButton)
    
      self.setLayout(vbox)
      self.setWindowTitle("Requirement parser")

   def getfiles(self):
      dlg = QFileDialog()
      dlg.setFileMode(QFileDialog.AnyFile)
      dlg.setNameFilters(["PDF files (*.pdf)","Text files (*.txt)"])
		
      if dlg.exec_():
         filenames = dlg.selectedFiles()
         filename = filenames[0]
         print(filename)
         text=""
         if filename.lower().endswith(('.pdf')):
            text = readPDF(filename)
         elif filename.lower().endswith(('.txt')):
            f = open(filename, 'r')
            with f:
                text = f.read()
                
         self.requirementText.getTextEdit().setText(text)
    
   def setColor(self,index):
        if index==1:
            self.outputText.setStyleSheet("color: rgb(255,0,0)")
        else:
            self.outputText.setStyleSheet("color: rgb(0,153,0)")

            
   def parseText(self):
      self.outputLayout.addWidget(RequirementEntry())
        
class RequirementEntry(QWidget):
    def __init__(self, parent=None):
        super(RequirementEntry, self).__init__(parent)

        self.checkbox = QCheckBox("Requirement")
        self.severitycombo = QComboBox()
        self.severitycombo.addItem("Error")
        self.severitycombo.addItem("Information")
        self.severitycombo.addItem("Warning")
        self.editButton = QPushButton("Edit")
        
        hlayout = QHBoxLayout()
        hlayout.addWidget(self.checkbox)
        hlayout.addWidget(self.severitycombo)
        hlayout.addWidget(self.checkbox)
        hlayout.addWidget(self.editButton)
        hlayout.addStretch(1)

        self.setLayout(hlayout)
      
def main():
   app = QApplication(sys.argv)
    
   ex = RequirementParserDialog()
   screen = app.primaryScreen()
   size = screen.size()
   ex.resize(int(size.width()),int(size.height()*.9))
   ex.show()
   sys.exit(app.exec_())
	
if __name__ == '__main__':
   main()