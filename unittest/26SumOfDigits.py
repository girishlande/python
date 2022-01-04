#calculate sum of digits of the given number

n = int(input("Enter the number"))
sum = 0
while n>=0:
  remainder = n % 10
  sum += remainder
  n /= 10
  
print("Sum of digits: ",sum)
