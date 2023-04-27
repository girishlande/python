from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        commands += Command
    ;
    Command:
        name='up' (dist=INT)?
        | name='down' (dist=INT)?
    ;
    '''

modeltext = r'''
    up 10
    down 10
    up 20
    down
    up 
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print (m.commands)
    for e in m.commands:
        print(e.__class__.__name__, e.name)

main()