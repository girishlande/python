#program to encrypt the text using cypher shifting
#ord function can be used to get the ASCII value of the character
#chr function cab be used to convert from ASCII to chacter

s = input("input data:")
k = 3
result = ''
for i in s:
    cv = ord(i)
    if cv>96 and cv<(97+26):
        index = cv - 97
        index = (index+k)%26
        cv = 97 + index
        result += chr(cv)
    else:
        result += i
        
print("Encrypted:",result)
       
    
       