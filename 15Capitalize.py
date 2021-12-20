#write function to capitalize first and fourth letters of name

def capitalize(s):
    c = list(s)
    
    c[0] = c[0].upper()
    c[3] = c[3].upper()
    return ''.join(c)  # convert list to string 
    
#function to reverse order of words in sentence    
def masterYoda(s):
    words = s.split()
    words.reverse()
    return ' '.join(words)
    
print(capitalize('girish'))
print(capitalize('ajitlande'))

print(masterYoda("Hello Girish How are you"))

    