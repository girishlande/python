import sys

# from PySide2 import QtCore
# from PySide2 import QtGui
# from PySide2 import QtWidgets
from PyQt5.QtWidgets import *
from PyQt5.QtGui import *
from PyQt5.QtCore import *

class DelegateButton(QPushButton):
    def __init__(self, parent=None):
        super(DelegateButton, self).__init__(parent)
        size = 30
        self.setFixedSize(size, size)
        self.setIcon(self.style().standardIcon(QStyle.SP_DialogOkButton))


class MainWindow(QWidget):
    def __init__(self):
        super(MainWindow, self).__init__()

        self.resize(600, 600)

        # Model/View
        entries = ['one', 'two', 'three']
        model = QStandardItemModel()
        delegate = ListItemDelegate()
        self.listView = QListView(self)
        self.listView.setModel(model)
        self.listView.setItemDelegate(delegate)

        for i in entries:
            item = QStandardItem(i)
            model.appendRow(item)

        # Layout
        main_layout = QVBoxLayout()
        main_layout.addWidget(self.listView)
        self.setLayout(main_layout)

        # Connections
        delegate.delegateButtonPressed.connect(self.on_delegate_button_pressed)

    def on_delegate_button_pressed(self, index):
        print('"{}" delegate button pressed'.format(index.data(Qt.DisplayRole)))


class ListItemDelegate(QStyledItemDelegate):
    delegateButtonPressed = pyqtSignal(QModelIndex)

    def __init__(self):
        super(ListItemDelegate, self).__init__()

        self.button = DelegateButton()

    def sizeHint(self, option, index):
        size = super(ListItemDelegate, self).sizeHint(option, index)
        size.setHeight(50)
        return size

    def editorEvent(self, event, model, option, index):

        # Launch app when launch button clicked
        if event.type() == QEvent.MouseButtonRelease:
            click_pos = event.pos()
            rect_button = self.rect_button

            if rect_button.contains(click_pos):
                self.delegateButtonPressed.emit(index)
                return True
            else:
                return False
        else:
            return False

    def paint(self, painter, option, index):
        spacing = 10
        icon_size = 40

        # Item BG #########################################
        painter.save()
        # if option.state & QStyle.State_Selected:
            # painter.setBrush(QColor('orange'))
        
        if option.state & QStyle.State_MouseOver:
            painter.setBrush(QColor('orange'))
        else:
            painter.setBrush(QColor('green'))
        painter.drawRect(option.rect)
        painter.restore()

        # Item Text ########################################
        rect_text = option.rect
        QApplication.style().drawItemText(painter, rect_text, Qt.AlignVCenter | Qt.AlignLeft, QApplication.palette(), False, index.data(Qt.DisplayRole))

        # Custom Button ######################################
        self.rect_button = QRect(
            option.rect.right() - icon_size - spacing,
            option.rect.bottom() - int(option.rect.height() / 2) - int(icon_size / 2),
            icon_size,
            icon_size
        )

        option = QStyleOptionButton()
        option.initFrom(self.button)
        option.rect = self.rect_button
        # Button interactive logic
        if self.button.isDown():
            option.state = QStyle.State_Sunken
        else:
            pass
        if self.button.isDefault():
            option.features = option.features or QStyleOptionButton.DefaultButton
        option.icon = self.button.icon()
        option.iconSize = QSize(30, 20)

        painter.save()
        self.button.style().drawControl(QStyle.CE_PushButton, option, painter, self.button)
        painter.restore()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    window = MainWindow()
    window.show()
    sys.exit(app.exec_())