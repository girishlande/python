#program to compute sum of squares of the numbers
import random

def sum(a):
    sum = 0
    for i in a:
        n = int(i)
        sum += n**2
    return sum
    
n = 10
while n>0:
    n -= 1
    
    t = 3 
    s = ''
    a = []
    while t>0:
        t -= 1
        r = int(100 * random.random() % 5)
        a.append(r)
        s = s + str(r) + "  "
    
    print(f"{s}     =>    {sum(a)}")
    
 