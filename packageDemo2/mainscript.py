# One way of calling functions from the other libraries

#from mypackage.lib1 import func1
#from mypackage.subpackage.lib2 import func2
#print("This is main script")
#func1()
#func2()

# Another way of calling functions from the other library 
from mypackage import lib1
from mypackage.subpackage import lib2

lib1.func1()
lib2.func2()
