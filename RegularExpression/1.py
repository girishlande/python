import re

str = "peter piper picked a peck of pickled peppers"

r1='p.*?e.*?r'
matches = re.findall(r1,str)
print(matches)
    
    
r2='p.*e.*r'
matches = re.findall(r2,str)
print(matches)



    