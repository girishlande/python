from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        dirs += Direction 
    ;
    Direction:
        Up | Down
    ;
    Up:
        'up' (dist=INT)?
    ;
    Down:
        'down' (dist=INT)?
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

    print (m.dirs)
    for e in m.dirs:
        print (e.__class__.__name__ , " distance:", e.dist)


main()