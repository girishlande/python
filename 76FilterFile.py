import sys
import os 
import os.path
import re


def ProcessFile(path):
    file1 = open(path,"r")
    fname = os.path.basename(path)
    filename, file_extension = os.path.splitext(path)
    newpath = os.path.join(os.getcwd(), filename + '_1' + file_extension)
    print(newpath)
    
    file2 = open(newpath,"w")

    WordsToFiler = ["undo",'SetFormula("0")']

    cnt = 1;
    while True:
        # Get next line from file
        line = file1.readline()
     
        # if line is empty
        # end of file is reached
        if not line:
            break

        if not line.strip():
           continue 

        found = False
        for word in WordsToFiler:
            if re.search(word, line, re.IGNORECASE):
               found = True
               break
        
        if (not found):
            file2.write(line)     
    
    file1.close()
    file2.close()

def main():    
    print('Number of arguments:', len(sys.argv))
    print('Argument List:', str(sys.argv))
    if (len(sys.argv)!=2):
        print("Usage: script <filename>")
        return 

    path = sys.argv[1]
    ProcessFile(path)

    if (not os.path.isfile(path)):
        print("Input file doesn't exists")
        return 

main()