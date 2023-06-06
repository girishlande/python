import re

# Fetch all the text between 2 words containing approximately 30 words 
text="crypto-bot that is trading Bitcoin and other currencies"
r1 = 'crypto(.{1,30})coin'
matches = re.findall(r1,text)
print(matches)

text="crypto-bot that is trading Bitcoin and other currenciescrypto-bot that is trading Bitcoin and other currenciescrypto-bot that is trading Bitcoin and other currencies"
r1 = 'crypto(.{1,30})coin'
matches = re.findall(r1,text)
print(matches)

# Read time . Expect 2 numbers followed by : followed by 2 numbers 
a1="12:48"
print(re.fullmatch('[0-9]{2}:[0-9]{2}',a1))

# Given time format must be valid time format 00:00 to 23:59
r1='([01][0-9]|2[0-3]):([0-5][0-9])' 
print(re.fullmatch(r1,"23:03"))

# Math email format 
print("\nMatch email format")
inputs=['ro$g45@gmail.com','r_duke78@outlook.coma','s.rog780@outlook.com','girish.lande@gmail.com','--._a3234@siemens.com']
r1='^(\w|\.|\_|\-)+[@]\w+[.]\w{2,3}$'
for i in inputs:
    print(re.fullmatch(r1,i))
   
print("\n Match digit")   
r1="[\d]+"
r2="[\d]{3}"
r3="\d\d\d"
print(re.fullmatch(r1,"123"))    
print(re.fullmatch(r2,"123"))    
print(re.fullmatch(r3,"123"))    

print("\n non digit match. Get all strings before and after the digits")
r1="[\D]+"
print(re.findall(r1,"hello girish your roll is 1234 and we want to see that"))

print("\n Get all characters from the sentense")
r1="\w"
print(re.findall(r1,"Hello girish123, this is some text and we think that it will be found"))

print("\n Get all words fromt the sentense")
r1="[\w]+"
print(re.findall(r1,"Hello girish123, this is some text and we think that it will be found"))

print("Greedy search")
r1="(p*t*r)"
print(re.search(r1,"peter patter did some thing to potter and got platter "))