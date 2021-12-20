# lesser of 2 events
# if both numbers are even then return the smaller numbers
# else return the larger number

def funcLesserOfEvents(a,b):
    smaller = min(a,b)
    greater = max(a,b)
    if a%2==0 and b%2==0:
        return smaller
    return greater
    
def bothStartingFromSameLetter(s):
    words = s.split()
    
    f1 = words[0][0]
    f2 = words[1][0]
    return f1==f2
    
print(funcLesserOfEvents(10,20))
print(funcLesserOfEvents(11,20))
print(funcLesserOfEvents(13,23))

print(bothStartingFromSameLetter('Girish Lande'))
print(bothStartingFromSameLetter('Girish Gande'))
print(bothStartingFromSameLetter('Girish ponde'))