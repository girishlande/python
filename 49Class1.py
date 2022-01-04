#program to demonstrate use of class 

class Student:
    _roll = 0
    _name = ''
    def __init__(self,roll,name):
        self._roll = roll
        self._name = name
        print("Initialized")

    def printme(self):
        print("Student details:")
        print(f"Roll:{self._roll}")
        print(f"Name:{self._name}")
                

class A:
    def __init__(self):
        print("A initialised")
        
    def func(self):
        print("A func called")
       
        
class B:
    def __init__(self):
        print("B initialised")

    def func(self):
        print("B func called")
        
class C(B,A):
    def __init__(self):
        print("C initialised")
        
   

class Test:
    _count = 10
    def __func__():
        print("func called")
    
    def setCount(self,count):
        self._count = count
        
    def __len__(self):
        return self._count
        

t = Test()
t.setCount(20)
print(len(t))        
        