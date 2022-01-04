#Count the frequency of each item from 1..N 
# data input:
# 10 3
# 3 2 1 2 3 1 1 1 1 3

# answer:
# 5 2 3

s = input("input data:")
a = s.split()
m = int(a[0])
n = int(a[1])

s = input()
a = s.split()
map1 = {}
for i in a:
  if i in map1.keys():
    map1[i] = map1[i] + 1
  else:
    map1[i] = 1

print(map1)