#program to demonstrate class and containers

class A:
    _roll = 10
    _name = 'Girish'
    
    def __init__(self,roll,name):
        self._roll = roll
        self._name = name
        
    def printme(self):
        print("Roll:",self._roll)
        print("Name:",self._name)
    
t = []
t.append(A(1,'Girish'))
t.append(A(2,'Ajit'))
t.append(A(3,'Suhas'))

for i in t:
    i.printme()
