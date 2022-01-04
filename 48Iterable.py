#program to make class iterable
import random

class Lotto:
    def __init__(self):
        self._max = 5
        
    def __iter__(self):
        for _ in range(self._max):
            yield random.randrange(0,100)
            
    def setMax(self,value):
        self._max = value
        
        
x = Lotto()
x.setMax(20)

for i in x:
    print(i)