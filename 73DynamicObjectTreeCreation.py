# --------------------------------------------------------------------
# Script to create a Tree of dynamic objects with dynamic attributes
# --------------------------------------------------------------------

import random 

count = 65

# Base class 
class Object(object):
    def __init__(self):
        self.name = ""
        self.parent = None
        self.children = []
        
    pass

def createObject(parent=None):
    a = Object()
    global count
    a.name = chr(count)
    count = count + 1
    a.parent = parent
    params = ['attr1', 'attr2', 'attr3', 'attr4']
    size = random.randint(1, 3)
    for i in range(0,size):
        p = params[i]
        val = random.randint(1,100)
        valstr = "Val_" + str(val)
        setattr(a, p, valstr)
    return a


def createTree(root,level):
    if (level>2):
        return;
    level = level + 1
    numChildren = random.randint(1, 3)
    for i in range(0,numChildren):
        c = createObject(root) 
        createTree(c,level)
        root.children.append(c)
        
def printTree(root,level):
    spacing = ""
    for i in range(0,level*4):
        spacing = spacing + " "
    
    for k,v in root.__dict__.items() : 
        if k == 'parent':
            if v == None:
                print(spacing,k,":",v)
            else:
                print(spacing,k,":",v.name)
        elif k == 'children':
            continue
        else:
            print(spacing,k,":",v)
            
    for c in root.children:
        printTree(c,level+1)
        
root = createObject()
createTree(root,0)
printTree(root,0)
    
    
