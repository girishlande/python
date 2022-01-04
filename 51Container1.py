
def merg(a,b):
    return a + ' ' + b
    

list1 = ["Girish","Ajit","Suhas"]
list2 = ["Lande","Lande","Walase"]

x = map(merg,list1,list2)
print(x)
print(list(x))

def add(a,b):
    return a+b
    
def sub(a,b):
    return a - b
    
def mult(a,b):
    return a * b
   
def div(a,b):
    return a / b
    
def doAll(func,num):
    return func(num[0],num[1])
    
f = (add,sub,mult,div)
v = [[5,3]]
n = list(v) * len(f)
print(f'f:{f} n={n}')
m = map(doAll,f,n)
print(m)
print(list(m))