def myfunc(s):
    result = ''
    count = 0
    for item in s:
        if count % 2 == 0:
            result += item.upper()
        else:
            result += item.lower()
        count += 1
            
    return result
    
result = myfunc('Anthromorphism')
print(result)
