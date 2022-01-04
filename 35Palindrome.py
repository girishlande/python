#program to check if the strings are palindrome

s = input("input data:")
sr = s[::-1]
if s == sr:
    print("palindrome")
else:
    print("NOT palindrome")
