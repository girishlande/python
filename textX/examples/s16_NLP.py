from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        data*=R1
    ;
    
    Line:
        /(?ms)[^\n]+/
    ;
    
    R1:
        /(?ms)^\\s*[A-Za-z,;'\"\\s\\n]*[.?!]$/
    ;
    
    R2:
        
    
    '''

modeltext = r'''    Volume Requirement
    The expect shampoo volume is 250ml (250,000mm3).
    Height Requirement
    The height of the shampoo bottle should be not more than 180mm.
    Width Requirement
    The width of the shampoo bottle should be between 60mm and 80mm.
    Depth Requirement
    The depth of the shampoo bottle should be between 30mm and 50mm.
    Thickness Requirement
    The plastic thickness of the shampoo bottle should be greater than 1mm.
    Tilt Angle Requirement
    The title angle should be greater than 10degrees.
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.data)
    for i,e in enumerate(m.data):
        print(i,":",e)
        
main()