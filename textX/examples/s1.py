from textx import metamodel_from_str, textx_isinstance

# Simple grammer which accepts strings 

metamodel_str = r'''
    Model:
        'hello' name=ID
    ;
    '''

modeltext = r'''
    hello Girish
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print (m.name)
    
main()