from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model:
        commands+=Modifier
    ;
    Modifier:
        (static?='static' final?='final' visibility=Visibility)#
    ;   

    Visibility:
        'public' | 'private' | 'protected';
    '''

modeltext = r'''
    static final public
    public static final
    final static public
    private
    protected
    
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.commands)
    for e in m.commands:
        print(e.static,e.final,e.visibility)
        
main()