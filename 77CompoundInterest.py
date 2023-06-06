
x = 5000000
x1 = x
for i in range(0,6):
    rate = 4.5 + i*0.5
    interest = x * (rate / 100)
    print("rate:",rate)
    print("Anual interest:",interest)
    

twoMonths = interest/6
print("Every 2 months:",twoMonths)

print("Calculations:\n")
n = 0
while n<6:
    x = x + twoMonths
    interest = x * (rate / 100)
    twoMonths = interest/6
    n=n+1
    print(f"after {n*2} months:")
    print("Capital:",x)
    print()

print("Compount interest:",x-x1)