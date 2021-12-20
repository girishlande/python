#list data structure is useful data structure in python
x=[1,2,3,4,5]
print(x)

x=[1,"Girish",2.32,'a',11,(1,2,3),{1:'a'},[1,2,3],set()]
for i in x:
    print(f"Type: {type(i)} value: {i}")
    
   
print(f'Length of list:{len(x)}')    

x=[1,4,2,34,4,2,2,6,8,5,34,5,67,4,2,9]
print(len(x))
print(f'Original:{x}')
x.sort()
print(f'Sorted  :{x}')

y = x[1:len(x):2]
print(f'Filtered:{y}')
