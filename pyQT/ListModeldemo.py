from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
import sys

class Student:
    def __init__(self,roll=11,name="Girish"):
        self.roll = roll
        self.name = name
        
class TestListModel(QAbstractListModel):
    def __init__(self, parent=None):
        QAbstractListModel.__init__(self, parent)
        self.testnames = []

    def load_docfiles(self):
        self.testnames.append(Student(10,"Girish"))
        self.testnames.append(Student(11,"Ajit"))
        self.testnames.append(Student(12,"Suhas"))
        self.testnames.append(Student(13,"Sameer"))

    def rowCount(self, index):
        return len(self.testnames)

    def data(self, index, role):
        if role == Qt.DisplayRole:
            testname = self.testnames[index.row()]
            return testname.name

    def columnCount(self,index):
        pass
        
    def gitemFromIndex(self,index):
        return self.testnames[index.row()]
        

class MainWindow(QWidget):
    def __init__(self):
        super(MainWindow, self).__init__()

        self.resize(600, 600)

        self.view = QListView(self)
        self.view.doubleClicked.connect(self.someMethod)
        
        self.model = TestListModel()
        self.model.load_docfiles()
        self.view.setModel(self.model)
        
        self.currentItem = None
        self.view.clicked[QModelIndex].connect(self.on_clicked)

    def someMethod(self):
        if not self.currentItem == None:
            print("Object Selected!",self.currentItem.name)
        else:
            print("object not found")
    
    def on_clicked(self, index):
        item = self.model.gitemFromIndex(index)
        self.currentItem = item
        
if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())