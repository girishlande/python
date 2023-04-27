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
        'person1' name=Name
    ;
    Person2:
        'person2' name=Name
    ;
    Name:
        /[A-Z][a-z]*/
    ;
    Comment:
         /\/\/.*$/  | /(?ms)\/\*.*\*\/$/
    ;

    '''

modeltext = r'''
    // this is comment
    // this is also a comment
    // By default will get same coordinateFrame.mRefs as owning SpatialItem, i.e.:
        // attribute :>> coordinateFrame { :>> mRefs = (mm, mm, mm); }
        
        /* rawStrut is a construction shape: a rectangular beam */

    /* rawStrut is a construction shape: a rectangular beam */

    /* multi line comment */
    
    /*  this comment
    will span multiple 
    lines and still should
    be accepted */
    person1 Girish
    person2 Ajit
    person1 Suhas
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.persons)
    for e in m.persons:
        print(e)

main()