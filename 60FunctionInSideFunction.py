#this program is demo of calling function within function 

def func(index=1):
    print("This is function")
    def func1():
        return "This is func1"
    def func2():
        return "This is func2"

       
    if (index==1):
        return func1;
    else:
        return func2;

print("hello Sanvi! how are you today?")

f = func(1)
print(f())
f = func(2)
print(f())
