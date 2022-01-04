#program to decrypt the text
#using ord and chr function we can deal with the ASCII values
import random
s = input("input data:")
k = 3
result = ''
for i in s:
  value = ord(i)
  if value>96 and value < (97+26):
    charvalue = value - 97
    charvalue = charvalue - k
    if charvalue < 0:
        charvalue = 27 - charvalue
    charvalue = 97 + charvalue
    result += chr(charvalue)
  else:
    result += i
    
print("Decrypted:",result)