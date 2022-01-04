# Program to write decorators
# decorators are special functions which can be used to call before actual function call

def test3(func):
    def inner():
        print('#'*40)
        func()
        print('#'*40)
    return inner
    
def test2(func):
    def inner():
        print("this is inner decorator beginning")
        func()
        print("this is inner decorator ending")
    return inner;
    
def test1(func):
    def inner():
        print('-'*40)
        func()
        print('+'*40)
    return inner

# In following function we have declared test1,test2 and test3 as decorators of this function    
@test1
@test2
@test3
def func():
    print("Girish says: How are you today")
    return 0
    
func()


def test4(func):
    def inner(*args,**kargs):
        print('-'*40)
        print(f"Function arguments:",*args)
        func(*args,**kargs)
        print('-'*40)
    return inner
    
@test4
def greet(name='Girish',age=20):
    print(f"Hello {name}!! You are {age} years old")
    
greet("Girish Lande",35)