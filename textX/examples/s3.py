from textx import metamodel_from_str, textx_isinstance

metamodel_str = r'''
    Model: 
        'data' '=' data=/(?ms)\"{3}(.*?)\"{3}/
    ;
    '''

modeltext = r'''
    data = """
  This is a multiline
  text! and it can go futher down
  and further down 
  """
    '''

def main():
    mm = metamodel_from_str(metamodel_str,use_regexp_group=True)
    m = mm.model_from_str(modeltext)

    print(m.data)
    
main()