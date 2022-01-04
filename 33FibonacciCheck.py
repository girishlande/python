#check the index of fibbonaci number

a = 0
b = 1
d = {}
cnt = 0
for i in range(1,100):
   d[a] = cnt
   cnt = cnt + 1
   c = a + b
   a = b
   b = c
   
n = int(input("input data:"))
result = []
for i in range(1,n):
   x = int(input())
   if x in d.keys():
     result.append(d[x])   
   else:
     result.append(-1)
     
print(result)