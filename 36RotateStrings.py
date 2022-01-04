#program to rotate strings from the given index
s=input("input data:")
a = s.split()
s = a[0]
i = int(a[1])
len = len(s)

s1 = s[i:len]
s2 = s[0:i]
print(s1+s2)

