from script1 import func1
from script1 import func2

def func3():
    print("this is func3")


def func4():
    print("this is func4")
    
    
if __name__ == "__main__":
    print("script2 is called directly")
    func1()
    func2()
    func3()
    func4()
else: 
    print("script2 is NOT being called directly")
    