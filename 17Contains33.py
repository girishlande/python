#given a list return true if list contains 3 next to 3
def check33(mylist):
    
    flag = False
    for i in range(0,len(mylist)-1):
        if (mylist[i]==mylist[i+1] and mylist[i]==3):
            flag = True
    return flag

def paperDoll(s):
    c = list(s)
    result = []
    for i in c:
        result.append(i*3)
    return ''.join(result)
    
def blackJack(a,b,c):
    sum = a+b+c
    if sum>21:
        if a==1 or b==11 or c==11:
            sum -= 10
        
    if sum<21:
        return sum
    return 'BUST'
    
# Return the sum of the numbers in the array, except ignore sections of numbers starting with a 6 and extending to the next 9 (every 6 will be followed by at least one 9). Return 0 for no numbers.    
def summer_69(numbers):
    sum = 0
    skip = False
    for i in numbers:
        if i==9:
            if skip:
                skip = False
                continue
        if i==6:
            skip = True
            continue
        if skip:
            continue
        sum += i
    return sum
    
#SPY GAME: Write a function that takes in a list of integers and returns True if it contains 007 in order
# spy_game([1,2,4,0,0,7,5]) --> True
# spy_game([1,0,2,4,0,5,7]) --> True
# spy_game([1,7,2,0,4,5,0]) --> False
def spy_game(mylist):
    pattern = [0,0,7]
    pcnt = 0
    for i in mylist:
        if i == pattern[pcnt]:
            pcnt+=1
            if pcnt==len(pattern):
                return True;
    return False
    
#COUNT PRIMES: Write a function that returns the number of prime numbers that exist up to and including a given number
#count_primes(100) --> 25
#By convention, 0 and 1 are not prime.
def isPrime(n):
    flag = True
    for i in range(2,n):
        if n % i == 0:
            flag = False
            break
    return flag    
    
def countPrime(n):
    count = 0
    for i in range(2,n+1):
        if isPrime(i):
            count+=1
    return count
    
print(check33([1,34,3,3,54,2,1]))

print(paperDoll('Girish'))

print(blackJack(5,6,7))
print(blackJack(9,9,9))
print(blackJack(9,9,11))

print(summer_69([1, 3, 5])) #--> 9
print(summer_69([4, 5, 6, 7, 8, 9])) #--> 9
print(summer_69([2, 1, 6, 9, 11])) #--> 14

print(spy_game([1,2,4,0,0,7,5])) #--> True
print(spy_game([1,0,2,4,0,5,7])) #--> True
print(spy_game([1,7,2,0,4,5,0])) #--> False

print("Prime numbers till 100:", countPrime(100))
