from textx import metamodel_from_str, textx_isinstance

# Simple grammer which accepts strings 

metamodel_str = r'''
    Model:
        'hello' to_greet+=Who[',']
    ;
    
    Who:
        name = /[^,]*/
    ;
    '''

modeltext = r'''
    hello Girish, Ajit, Suhas
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.to_greet)
    for e in m.to_greet:
        print(e.name)
        
main()