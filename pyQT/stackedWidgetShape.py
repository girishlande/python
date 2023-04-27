import sys
from PyQt5.QtCore import *
from PyQt5.QtGui import *
from PyQt5.QtWidgets import *

class stackedExample(QWidget):

   def __init__(self):
      super(stackedExample, self).__init__()
      self.leftlist = QListWidget ()
      self.leftlist.insertItem (0, 'Box' )
      self.leftlist.insertItem (1, 'Cylinder' )
      self.leftlist.insertItem (2, 'Cone' )
		
      self.stack1 = QWidget()
      self.stack2 = QWidget()
      self.stack3 = QWidget()
		
      self.stack1UI()
      self.stack2UI()
      self.stack3UI()
		
      self.Stack = QStackedWidget (self)
      self.Stack.addWidget (self.stack1)
      self.Stack.addWidget (self.stack2)
      self.Stack.addWidget (self.stack3)
		
      hbox = QHBoxLayout(self)
      hbox.addWidget(self.leftlist)
      hbox.addWidget(self.Stack)

      self.setLayout(hbox)
      self.leftlist.currentRowChanged.connect(self.display)
      self.setGeometry(300, 50, 10,10)
      self.setWindowTitle('Shape Creation')
      self.show()
		
   def stack1UI(self):
      layout = QFormLayout()
      xpos = QLineEdit()
      xpos.textChanged.connect(self.setXpos)
      layout.addRow("X:",xpos)
      ypos = QLineEdit()
      ypos.textChanged.connect(self.setYpos)
      layout.addRow("Y:",ypos)
      zpos = QLineEdit()
      zpos.textChanged.connect(self.setZpos)
      layout.addRow("Z:",zpos)

      length = QLineEdit()
      length.textChanged.connect(self.setLength)
      layout.addRow("Length:",length)

      width = QLineEdit()
      width.textChanged.connect(self.setLength)
      layout.addRow("Width:",width)

      height = QLineEdit()
      height.textChanged.connect(self.setLength)
      layout.addRow("Height:",height)

      pushbutton = QPushButton("OK")
      pushbutton.clicked.connect(self.accept)
      layout.addWidget(pushbutton)

      self.stack1.setLayout(layout)
		
   def setXpos(self,data):
      print("Xpos changed:",data)
      xpos = data
   def setYpos(self,data):
      xpos = data
   def setZpos(self,data):
      xpos = data
   def setLength(self,data):
      xpos = data
   def accept(self,data):
      xpos = data
   def stack2UI(self):
      layout = QFormLayout()
      layout.addRow("X:",QLineEdit())
      layout.addRow("Y:",QLineEdit())
      layout.addRow("Z:",QLineEdit())
      layout.addRow("Diameter:",QLineEdit())
      layout.addRow("Height:",QLineEdit())
      layout.addWidget(QPushButton("OK"))
      self.stack2.setLayout(layout)
		
   def stack3UI(self):
      layout = QFormLayout()
      layout.addRow("X:",QLineEdit())
      layout.addRow("Y:",QLineEdit())
      layout.addRow("Z:",QLineEdit())
      layout.addRow("Diameter:",QLineEdit())
      layout.addRow("Height:",QLineEdit())
      layout.addWidget(QPushButton("OK"))
      self.stack3.setLayout(layout)
		
   def display(self,i):
      self.Stack.setCurrentIndex(i)
		
def main():
    app = QApplication(sys.argv)
    ex = stackedExample()
    sys.exit(app.exec_())
	
if __name__ == '__main__':
    main()