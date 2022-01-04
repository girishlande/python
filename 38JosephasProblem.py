# N=10 K=3
# kill every k the person in round robin and find out the safe person
#Josephas problem 
#1st round: 1 2 (3) 4 5 (6) 7 8 (9) 10
#2nd round:                            1 (2) 4 5 (7) 8 10
#3rd round:                                                (1) 4 5 (8) 10
#4th round:                                                               4 (5) 10
#5th round:      (4) 10

s = input("input data:")
a = s.split()
n = int(a[0])
k = int(a[1])

p = []
for i in range(0,n):
   p.append(i+1)

print(p)

cnt = 0
index = 0
while len(p) > 1:
    cnt += 1
    if cnt % k == 0:
       item = p[index]
       del p[index]
       print(f"({item}) => {p}")
    else:
       index += 1
    index = index % len(p)   
     
