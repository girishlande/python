from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        data*=Data
    ;
    
    Data:
        Alphanumeric | NewLine | SpecialChar
    ;
    
    Alphanumeric:
        /\w/
    ;
    
    NewLine:
        /\n/
    ;
    
    SpecialChar:
        /[?!'"()*\/:;\\]/
    ;
    '''

modeltext = r'''    
    This is text    
    This is new line 
    This is number 123
    This is alphanumber 123mm
    this is questionMark?
    This is exclamation!
    '"()
    sometime(x)*(y) 
    x/y
    \n\n
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.data)
    # for i,e in enumerate(m.data):
        # print(i,":",e)
        
main()