
# This scripts is useful to create a filelist.txt which will contain entries of all the autotests master XML files which you may want to checkout
# and then change them for new format (RE mastering)
# to use this script change the path below in the script to point to your athena folder

# when to use this ? 
# when you get the list of failure tests it contains .py files
# you can run them with devtest runtest.
# after that it creates those files in athena\\work. 
# then you can run this script to get list of files to checkout 

# how to run ?
# update the path below to point to your project \athena\work folder 

import os

resultedfileList=[]
# Get the list of all files and directories
path = "D:\\workdir\\devunits\\T2_2212Modelling_PR10323973\\athena\\work"

dir_list = os.listdir(path) 
mastercount = 0
for x in dir_list:
    if x.endswith("master.xml"):
        resultedfileList.append(x)
        mastercount+=1
        

if os.path.exists("FileListToCheckout.txt"):
  os.remove("FileListToCheckout.txt")
  
fileHandle2 = open("FileListToCheckout.txt","a+")#append mode 
for x in resultedfileList:
    fileHandle2.write(x+"\n")
    
fileHandle2.close()              

print("Total master files: " + str(mastercount))