# Script which compares 2 folders and prints the names of files which are missing.
# author: Girish Lande

import os
import shutil

def Diff(li1, li2):
    return list(set(li1) - set(li2)) + list(set(li2) - set(li1))
    

# Read content of first folder
files1 = []
sstring = "--master.xml"
path1 = "D://ffff"
dir_list1 = os.listdir(path1)
for i in dir_list1:
    if i.endswith(sstring):
        i = i[:-(len(sstring))]
    files1.append(i)
print(path1 + " #files : " + str(len(files1)))

# Read all file names from second folder 
files2 = []
sstring = "--new.xml"
path2 = "D://tttt"
dir_list2 = os.listdir(path2)
for i in dir_list2:
    if i.endswith(sstring):
        i = i[:-(len(sstring))]
    files2.append(i)
print(path2 + " #files : " + str(len(files2)))

# Compare the 2 lists 
print("\nDifference:")
for i in Diff(files1,files2):
   print(i + "--master.xml")