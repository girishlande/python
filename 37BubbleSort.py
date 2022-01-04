#program to perform bubble sort 

s = input()
a = s.split()
d = []
for i in a:
    d.append(int(i))

print("unsorted:",d)

for i in range(0,len(d)-1):
   for j in range(0,len(d) - i - 1):
        if d[j] > d[j+1]:
            t = d[j]
            d[j] = d[j+1]
            d[j+1] = t
   print(f"iteration {i+1}:{d}")
        
print("sorted:",d)
   
   