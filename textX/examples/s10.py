from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        persons+=Person
    ;        
    Person:
        name=Name ',' surname=Surname ',' age=INT ',' height=FLOAT 
    ;
    Name:
        /[A-Z][a-z]*/
    ;
    Surname:
        /[A-Z][a-z]*/
    ;
    '''

modeltext = r'''
    Girish,Lande,37,6.0
    Ajit,Lande,39,5.5
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.persons)
    for e in m.persons:
        print(e.name," ", e.surname, " ", e.age, " ", e.height)
main()