from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        'data' '=' color+=Color[',']
    ;
    Color:
        "red" | "green" | "blue"
    ;
    '''

modeltext = r'''
    data = green, blue, red, blue
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.color)
    for e in m.color:
        print(e)
main()