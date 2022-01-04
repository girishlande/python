#program to smooth the input data as follows
# if he have the sequence of 5 values like this:

#3 5 6 4 5

#Then the second (i.e. 5) should be substituted by (3 + 5 + 6) / 3 = 4.66666666667,
#the third (i.e. 6) should be substituted by (5 + 6 + 4) / 3 = 5,
#the fourth (i.e. 4) should be substituted by (6 + 4 + 5) / 3 = 5.
#By agreement, the first and the last values will remain unchanged.

s = input("input data:")
b = s.split()
a = []
for i in b:
  a.append(int(i))

print(a)

for i in range(0,len(a)):
  if i == 0 or i+1 == len(a):
    print(a[i])
  else:
    print((a[i-1]+a[i]+a[i+1])/3)
