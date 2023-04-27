from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *
import re

class DelegateCombo(QStyledItemDelegate):
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

class Main(QMainWindow):
    def __init__(self, parent=None):
        super().__init__(parent)

        # create table view:
        self.get_choices_data()
        self.get_table_data()
        self.tableview = self.createTable()
        self.tableview.clicked.connect(self.tv_clicked_pos)

        # Set the maximum value of row to the selected row
        self.selectrow = self.tableview.model().rowCount(QModelIndex())

        # create buttons:
        self.addbtn = QPushButton('Add')
        self.addbtn.clicked.connect(self.insert_row)
        self.deletebtn = QPushButton('Delete')
        self.deletebtn.clicked.connect(self.remove_row)
        self.exportbtn = QPushButton('Export')
        self.exportbtn.clicked.connect(self.export_tv)
        self.computebtn = QPushButton('Compute')
        self.enablechkbox = QCheckBox('Completed')

        # create label:
        self.lbltitle = QLabel('Table')
        self.lbltitle.setFont(QFont('Arial', 20))

        # create gridlayout
        self.grid_layout = QGridLayout()
        self.grid_layout.addWidget(self.exportbtn, 2, 2, 1, 1)
        self.grid_layout.addWidget(self.computebtn, 2, 3, 1, 1)
        self.grid_layout.addWidget(self.addbtn, 2, 4, 1, 1)
        self.grid_layout.addWidget(self.deletebtn, 2, 5, 1, 1)
        self.grid_layout.addWidget(self.enablechkbox, 2, 6, 1, 1, Qt.AlignCenter)
        self.grid_layout.addWidget(self.tableview, 1, 0, 1, 7)
        self.grid_layout.addWidget(self.lbltitle, 0, 3, 1, 1, Qt.AlignCenter)

        # initializing layout
        self.title = 'Data Visualization Tool'
        self.setWindowTitle(self.title)
        self.setGeometry(0, 0, 1024, 576)
        self.showMaximized()
        self.centralwidget = QWidget()
        self.centralwidget.setLayout(self.grid_layout)
        self.setCentralWidget(self.centralwidget)

    def get_table_data(self): 
        # set initial table values:
        self.tabledata = [['1', self.choices[0], self.options[0]]]

    def get_choices_data(self):
        # set combo box choices:
        self.choices = ['Box','Cylinder','Cone','Translate','Rotate','Transparency']
        self.options = ['Edit','Delete']

    def createTable(self):
        tv = QTableView()

        # set header for columns:
        header = ['Index', 'Operation', 'Action']       

        tablemodel = Model(self.tabledata, header, self)
        tv.setModel(tablemodel)
        hh = tv.horizontalHeader()
        tv.resizeRowsToContents()

        # ItemDelegate for combo boxes
        tv.setItemDelegateForColumn(1, DelegateCombo(self, self.choices))
        tv.setItemDelegateForColumn(2, DelegateCombo(self, self.options))

        # make combo boxes editable with a single-click:
        for row in range(len(self.tabledata)):
            tv.openPersistentEditor(tablemodel.index(row, 1))

        return tv

    def export_tv(self):
        self.tableview.model().print_arraydata()

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
    main.resize(int(size.width()*.4),int(size.height()*.4))
    
    main.show()
    app.exec_()