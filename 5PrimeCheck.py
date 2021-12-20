n=int(input("Enter a number:"))
print("You entered:",n);
a=2

flag = True
while a < n :
    if n % a == 0 :
        flag = False
        break
    else :
        a = a + 1
        
if flag == True : 
    print("Number is prime")
else :
    print("Number is NOT prime")
    

