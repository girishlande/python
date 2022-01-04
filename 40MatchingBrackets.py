#Check if the input string contains the matching brackets
def isOpening(ch):
    return ch=='{' or ch=='(' or ch=='['
    
def isClosing(ch):
    return ch=='}' or ch==')' or ch==']'
    
def isClosingMatch(ch1,ch2):
    if ch1=='(' and ch2==')':
        return True
    if ch1=='{' and ch2=='}':
        return True
    if ch1=='[' and ch2==']':
        return True
    return False
    
s = input("input data:")
a = []
flag = True
for i in s:
    if isOpening(i):
        a.append(i)
    elif isClosing(i):
        if len(a)>0:
          ch1 = a.pop()
        else:
           flag = False
           break
        if isClosingMatch(ch1,i) == False:
           flag = False
           break
    else:     
        pass

if len(a)>0:
   flag = False
   
if flag:
    print("CORRECT STRING")
else:
    print("INCORRECT STRING")