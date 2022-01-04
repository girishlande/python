def func1():
    print("this is func1")


def func2():
    print("this is func2")
    
    
if __name__ == "__main__":
    print("script1 is called directly")
    func1()
    func2()
else: 
    print("script1 is NOT being called directly")
    