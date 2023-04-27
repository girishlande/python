from textx import metamodel_from_str, textx_isinstance

# Simple grammer which accepts strings 

metamodel_str = r'''
    Model:
        commands+=Command
    ;
    
    Command:
        cmd=STRING param1?=INT (param2=IntValue)?
    ;
    
    IntValue:
        v=INT
    ;
    '''

modeltext = r'''
    'move' 10 20 
    'Girish' 20 30 
    'ajit' 40
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.commands)
    for c in m.commands:
        print(c.cmd," ",c.param1, " " ,c.param2)
        if (c.param2):
            print("value=",c.param2.v)
main()