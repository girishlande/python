#calculate compound interest 

n = int(input("Enter the amout:"))
r = float(input("interest rate:"))
d = int(input("compound time (months):"))

months = 12
p = n
while(months>0):
    monthly_interest = (n * (r /100) ) / 12
    n = n + (monthly_interest * 2)
    months = months - d
    
print("Total amount at end of year: ",n)
print("Interest earned:",n-p)