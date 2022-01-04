#program to use filter function 

#prepare a list of 10 random numbers
import random

v = []
for i in range(10):
    v.append(random.randrange(100))
    
print(v)

#Filter all the numbers which are greater than 50

def lower(value):
    if value < 50:
        return True
    else: 
        return False
        
f = filter(lower,v)
print("Filtered values:",list(f))


class Animal:
    def __init__(self,name):
        self.name = name
    
class Cat(Animal):
    def __init__(self,name):
        super().__init__(name)
        
class Dog(Animal):
    def __init__(self,name):
        super().__init__(name)
        

def cats(value):
    return isinstance(value,Cat)
    
def dogs(value):
    return isinstance(value,Dog)
    
 
animals  = []
for i in range(10):
    name = "Animal " + str(i+1)
    if i % 2 == 0:
        name = "CAT " + str(i+1)
        animals.append(Cat(name))
    else: 
        name = "DOG " + str(i+1)
        animals.append(Dog(name))
     

print("\nCATS")
x = filter(cats,animals)
for i in x:
    print(i.name)
    
print("\nDOGS")
x = filter(dogs,animals)
for i in x:
    print(i.name)
    