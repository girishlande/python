from textx import metamodel_from_str, textx_isinstance

# Simple grammer which accepts strings 
metamodel_str = r'''
    Model:
        items*=H
    ;
    
    H:
        (n1=Noun v1=Verb v2=Fruit)#
    ;

    Noun:
        n='Girish' | n='Ajit' | n='Suhas'
    ;
    
    Verb:
        v='ate' | v='drank' | v='cut'
    ;

    Fruit:
        f='Mango' | f='Banana' | f='Apple'
    ;

    
    
    '''

modeltext = r'''  
        Girish ate Apple
        Ajit drank Mango
        Banana Suhas ate    
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    for i in m.items:
        print(i.n1.n," ",i.v1.v, " ",i.v2.f)
        
main()