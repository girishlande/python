from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        colors += Colors
    ;
    Colors:
        ("red" | "green" | "blue")
    ;
    '''

modeltext = r'''
    red
    green
    blue
    blue
    green
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.colors)

main()