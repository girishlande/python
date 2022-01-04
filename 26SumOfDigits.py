#calculate sum of digits of the given number

n = int(input("Enter the number:"))
sum = 0

while n>0:
  r = int(n % 10)
  sum += r
  n = int(n/10)
  
print("Sum of digits: ",sum)
