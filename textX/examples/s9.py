from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model:
        commands+=Modifier
    ;
    Modifier:
        ((visibility=Visibility static?='static' (returntype=ReturnType)? 'main') final?='final' )#
    ;   
    ReturnType:
        ('void' | 'int')
    ;
    Visibility:
        'public' | 'private' | 'protected';
    '''

modeltext = r'''
    public static void main
    private static void main
    public static void main final 
    private static void main final 
    public static int main
    protected static int main
    public static main 
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.commands)
    for e in m.commands:
        print(e.visibility,e.static,e.returntype,e.final)
        
main()