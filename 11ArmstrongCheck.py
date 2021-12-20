# print all armstrong numbers between 1 and 1000
# number is armstrong if addition of cube of digits is number itself

def checkArmstrong(n):
    #print("Input number is:",n)
    sum = 0
    cn = n
    while n>0:
        rem = int(n % 10)
        sum += (rem ** 3)
        n = int(n / 10)
         
    return cn == sum

for i in range(1,1000):
    isArmstrong = checkArmstrong(i)
    if isArmstrong:
        print(f'Number: {i} Armstrong: {isArmstrong}')


    
    
