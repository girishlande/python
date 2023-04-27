from PyQt5 import QtWidgets
from PyQt5.QtCore import QFile, QTextStream
import breeze_resources
import sys
from PyQt5.QtWidgets import *
from PyQt5.QtCore import Qt
from UI import *
				
def main():
   app = QApplication(sys.argv)
   file = QFile(":/dark/stylesheet.qss")
   file.open(QFile.ReadOnly | QFile.Text)
   stream = QTextStream(file)
   app.setStyleSheet(stream.readAll())
   
   ex = RequirementParserDialog()
   screen = app.primaryScreen()
   size = screen.size()
   ex.resize(int(size.width()),int(size.height()*.9))
   ex.show()
   sys.exit(app.exec_())
	
if __name__ == '__main__':
   main()