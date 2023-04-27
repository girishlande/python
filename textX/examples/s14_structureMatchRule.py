from textx import metamodel_from_str, textx_isinstance

# Simple grammer which accepts strings 

metamodel_str = r'''
    Model:
        'structure' '{'
            elements*=StructureElement
         '}'
    ;
    
    StructureElement:
        Folder | File
    ;
    
    Folder:
        'folder' name=ID '{'
            elements*=StructureElement
        '}'
    ;
    
    File:
        'file' name=ID
    ;
          
    '''

modeltext = r'''
    structure {
        folder A {
            folder F {
                file A
                file B
            }
        }
        folder B {
            folder M {
                file N
                file O
            }
            folder K {
                file A
                file B
            }
        }
        file C
        file D
        folder E {
            folder K {
                file A
                file B
                folder T {
                    file R
                    file X
                    folder Y {
                        file Z
                        file Q
                    }
                }
            }
        }
    }
    
    '''

def printTree(e,level):
    if (e.__class__.__name__!="Folder"):
        return
    
    for e in e.elements:
        d=""
        l = level - 1
        for j in range(0,l*4):
            d = d + " "
            
        space = "+"
        for i in range(0,2):
            space = space + "-"
        print(" ",d,space,e.name)
        printTree(e,level+1)
    
def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    for e in m.elements:
        print("  ",e.name)
        printTree(e,1)
    
main()