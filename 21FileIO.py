def readFile():
    myfile = open("test.txt")
    output = myfile.read()
    print(output)
    print()
    myfile.close()

def readFile1():
    for line in open("test.txt"):
        print(line)
    
def writeFile():
    myfile = open("test.txt","a+")
    myfile.write("\nHello Suhas, how are you?");
    myfile.close()
    print()

#readFile()
#writeFile()
#readFile()
readFile1()