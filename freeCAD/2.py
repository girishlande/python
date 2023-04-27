FREECADPATH = 'C:/Program Files/FreeCAD 0.20/bin/'
import sys
sys.path.append(FREECADPATH)
#import FreeCAD

import FreeCAD
import FreeCADGui
import Part

import sys

from PySide2.QtWidgets import QApplication


if __name__ == "__main__":

    print("running")
    app = QApplication(sys.argv)

    print("Exit11")
    FreeCADGui.showMainWindow()
    print("Exit12")
    doc = FreeCAD.newDocument()
    box = Part.makeBox(100, 100, 100)
    Part.show(box)

    print("Exit1")
    sys.exit(app.exec_())
    print("Exit2")