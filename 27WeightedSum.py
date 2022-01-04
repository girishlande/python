# calculate the weighted sum of digits 
def calculate_weighted_sum(n):
    pos = 1 
    sum = 0
    nlist = []
    while n>0:
        r = int(n % 10)
        nlist.append(r)
        n = int(n / 10)
        
    nlist.reverse() 
    for i in nlist:
        sum = sum + (i*pos)
        pos += 1
        
    return sum
    
nlist = []    
n = int(input("input data:"))

s = input().split()
rs = ''     
for i in s:
    n = int(i)
    sum = calculate_weighted_sum(n)
    rs = rs + str(sum) + ' '

    
print(rs)    
    
    
    