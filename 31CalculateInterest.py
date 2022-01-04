#Calculate interest 

n = input("input data:")
s = n.split()
start = int(s[0])
target = int(s[1])
rate = float(s[2])

sum = start
year = 1
while sum<target:
    sum = sum + (sum * rate / 100)
    print(f"{year}=> {sum}")
    year += 1
    