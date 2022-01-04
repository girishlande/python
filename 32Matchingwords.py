# find matching words from the given words and print them 

s = input()
a = s.split()
d = {}
for i in a:
    if i in d.keys():
        print(i)
    else: 
        d[i] = 1
 