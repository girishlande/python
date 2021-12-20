#How to slice the string str[begin:end:step]
#Strings are not mutable. It means that you can't use indexing to change the string. for e.g str[0]='A'

s="abcdefghi"
print("Reverse of string is:",s[::-1]);

s = s.upper()
print(s)
s = s.lower();
print(s);

x = "Hi this is string"
print(x.split())

y = x.split()
print(type(y));