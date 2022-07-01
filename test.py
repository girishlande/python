print("Hello Girish")


def addition(base,*args):
    result = 0
    for arg in args:
        result += arg
        
    print("Sum of numbers is: ",result)
    

addition(1,2,3,4);