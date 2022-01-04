#find average of input array 
#input data:
#3
#2 3 7 0
#20 10 0
#1 0

#answer:
#4 15 1

def avg(a):
    sum = 0
    for i in a:
        n = int(i)
        sum += n
    
    return sum/len(a)
    
n = int(input("input data:"))
a = []
while n>0:
    s = input()
    a.append(s)
    n -= 1

print("\nanswer:")
res=''    
for i in a:
    n = i.split()
    r = int(avg(n))
    res = res + str(r) + ' '
    
print(res)