from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model:
        elements+=Element
    ;
    Element:
        ScreenType | ScreenInstance
    ;
    ScreenType:
      'screen' name=ID '{'
            elements*=Attribute
      '}'
    ;
    ScreenInstance:
        'screen' type=[ScreenType] name=ID
    ;
    Attribute:
        attname=ID ':' attvalue=AttributeValue
    ;
    AttributeValue:
        ID | INT | STRING
    ;
    '''

modeltext = r'''
    screen LED {
        pixels:'100X200'
        dpi:32
    }
    screen LCD {
        pixels:'200X200'
        dpi:16
    }
    screen LED s1
    screen LED s2
    screen LCD s3
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    for e in m.elements:
        print(e.__class__.__name__)
        if(e.__class__.__name__=='ScreenInstance'):
            print("name:",e.type.name)
            for a in e.type.elements:
                print("    ",a.attname,":",a.attvalue)
            
    
main()