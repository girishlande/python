#given a number check if it is within 10 of 100 or 200

def checkNumber(n):
    print("Number:",n)
    check100 = 90<n<110
    check200 = 190<n<210
    return check100 or check200
   
print(checkNumber(92))
print(checkNumber(192))
print(checkNumber(102))
print(checkNumber(209))
print(checkNumber(122))
print(checkNumber(83))

print(checkNumber(222))
print(checkNumber(183))
