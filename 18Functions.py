#Write a function that checks whether a number is in a given range (inclusive of high and low)

def check_within_range(n,min,max):
    return min<n<max;
    
#Write a Python function that accepts a string and calculates the number of upper case letters and lower case letters.
def calculate_upper_case_letters(s):
    slist = list(s)
    upper_cnt = 0
    lower_cnt = 0
    for i in slist:
        if i.isupper() :
            upper_cnt+=1
        elif i.islower(): 
            lower_cnt+=1
            
    print('No. of upper case characters:',upper_cnt)
    print('No. of lower case characters:',lower_cnt)
    
#Write a Python function that takes a list and returns a new list with unique elements of the first list.
def unique_list(mlist):
    return list(set(mlist))
    
#Write a Python function to multiply all the numbers in a list.    
def multiply(numbers):
    result = 1
    for i in numbers:
        result *= i;
    return result
    
#Write a Python function that checks whether a word or phrase is palindrome or not.
def palindrome(s):
    return s == s[::-1]
    
import string

def ispangram(str1):
    alphabet=string.ascii_lowercase
    chars = list(str1)
        
    for i in alphabet:
        found = False
        for j in chars:
            if j.islower() or j.isupper() :
                
                if i==j.lower():
                    found = True
        if found == False:
            return False
                    
    return True;        
    
    
print(check_within_range(5,1,10))
print(check_within_range(15,11,20))
print(check_within_range(5,11,10))

calculate_upper_case_letters('Hello Mr. Rogers, how are you this fine Tuesday?')

mlist = [1,1,1,1,2,2,3,3,3,3,4,5]
print('Before list:',mlist);
mlist = unique_list(mlist)
print('After list:',mlist);

print(multiply([1,2,3,-4]))

print(palindrome('Girish'))
print(palindrome('nitin'))

print("isPanGram:",ispangram('Hello GIrish'))
print("isPanGram:",ispangram('The quick brown fox jumps over the lazy dog'))