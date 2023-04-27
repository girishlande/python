from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        persons+=Person
    ;        
    Person:
        Person1
        | Person2
    ;
    Person1:
        'person1' name=Name '{' atts=Attribute '}'
    ;
    Person2:
        'person2' name=Name '{' atts=Attribute '}'
    ;
    Name:
        /[A-Z][a-z]*/
    ;
    
    Attribute:
        RollAttribute
        | NameAttribute
    ;
    
    RollAttribute:
      'attribute' 'roll' value=NUMBER
    ;
    
    NameAttribute:
      'attribute' 'name' ID    
    ;
    
    Surname:
        /[A-Z][a-z]*/
    ;
    '''

modeltext = r'''
    person1 Girish { 
    attribute roll 11
    }
    person2 Ajit { 
    attribute name Ajit
    }
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.persons)
    for e in m.persons:
        print(e.atts)
        
main()