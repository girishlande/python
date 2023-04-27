from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    model:
        commands+=Command
    ;
    
    Command:
        reg2 | reg1 | reg4 | reg3
    ;
    
    reg1:
        r1=/\d*/
    ;
    
    reg2:
        r2=/\d{3,4}-\d{3}/
    ;
    
    reg3:
        r3=/[-\w]*\b/
    ;
    
    reg4:
        r4=/[^}]*/
    ;
    '''

modeltext = r'''
    342
    1233-222
    123-222
    123-212
    Girish
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.commands)
    for c in m.commands:
        match c.__class__.__name__:
            case 'reg1':
                print(c.r1)
            case 'reg2':
                print(c.r2)
            case 'reg3':
                print(c.r3)
            case 'reg4':
                print(c.r4)
            
    
main()