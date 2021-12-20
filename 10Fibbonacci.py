n1=0
n2=1
x=int(input("Enter limit:"))
if x<=0 :
    print(n1)
else : 
    while x > 0 :
        print(n1)
        temp = n1
        n1 = n2
        n2 = n2 + temp
        x -= 1
