import sys
from PyQt5.QtWidgets import *
from PyQt5.QtCore import *

app = QApplication(sys.argv)

lbl = QLabel('<img src=splashscreen.png>')
lbl.setWindowFlags(Qt.SplashScreen | Qt.FramelessWindowHint)
lbl.show()

QTimer.singleShot(4000,app.quit)

sys.exit(app.exec_())