#program to count the set bits in the number 

n = int(input("input data:"))
result = ''
cnt = 0
for i in range(0,32):
   gen = 1 << i
   if n & gen:
     result += '1'
     cnt+=1
   else:
     result += '0'

print(result[::-1])
print(cnt)