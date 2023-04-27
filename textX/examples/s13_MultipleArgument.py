from textx import metamodel_from_str, textx_isinstance

# Simple grammer which accepts strings 

metamodel_str = r'''
    Model:
        lines*=Method
    ;    
    Method:
      'func(' (params+=Parameter[','])? ')'
    ;
    Parameter:
      type=ID name=ID | name=ID
    ;
    '''

modeltext = r'''
    func()
    func(int x,int y)
    func(int x,float y,string z)
    func(x,y,z)
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.lines)
    for l in m.lines:
        print(l.params)
        for p in l.params:
            if (p.type):
                print("type:",p.type," name:",p.name)
            else:
                print("name:",p.name)
    
main()