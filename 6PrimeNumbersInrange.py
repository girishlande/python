
a = int(input("Enter min range:"))
b = int(input("Enter max range:"))

while a < b :
	i = 2
	flag  = True
	while i < a :
		if a % i == 0 :
			flag = False
			break
		else :
			i = i + 1
	
	if flag == True :
		print (a)
	a = a + 1
