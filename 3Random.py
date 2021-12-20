import random
# Generate random numbers and print numbers which are less than 100

i=100
while i > 0 :
    n=int(random.random() * 1000)
    if n < 100 :
        print("Generated random number:",n);
    i=i-1
    