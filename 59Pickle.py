#Program to serialize the objects using pickle . Is module which lets you write and read class objects 

import pickle

class person(object):
    name = ""
    age = 35
    
    def __init__(self,name,age):
        self.name = name
        self.age = age
        
    def hello(self):
        print(f"Hello my name is {self.name} and age is {self.age}")
        
 
p = person("Girish",11)
p.hello()

#Serialize the object . Write in binary format 
filepath = "D://test.txt"
with open(filepath,'bw') as f:
    pickle.dump(p,f)
    
print("Pickle has landed")
    
#Load the object from the file 
with open(filepath,'br') as m:
    output = pickle.load(m)
    output.hello()
    
    