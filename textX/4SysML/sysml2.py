import sys
from textx import metamodel_from_file
     
    
if __name__ == '__main__':
    print("Running in main")
    if len(sys.argv) != 2:
        print("Pass statemachine model")
    else:
        print(f"Statemachine model:{sys.argv[1]}");
        mm = metamodel_from_file("package.tx")
        model = mm.model_from_file(sys.argv[1])
        
        
    
