import sys
from PyQt5.QtWidgets import QLabel
#from PyQt5.QtCore import *
from guiapplication import * 

def showSplash():
    app = QApplication(sys.argv)

    lbl = QLabel('<img src=./images/splashscreen3.png>')
    lbl.setWindowFlags(Qt.SplashScreen | Qt.FramelessWindowHint)
    lbl.show()

    QTimer.singleShot(4000,app.quit)
    app.exec_()
    
    #sys.exit(app.exec_())
    
if __name__ == '__main__':
    showSplash()
    startApplication()
    