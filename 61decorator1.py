#this program demonstrates use of decorators

def decoratoredfunc(inputfunction):
    def tempfunc(a,b):
        print("// -----------------------------------")
        inputfunction(a,b)
        print("// -----------------------------------")
    return tempfunc

#@decoratoredfunc    
def myMultiplication(a,b):
    print("result:",a*b)
    

myMultiplication(10,20)


