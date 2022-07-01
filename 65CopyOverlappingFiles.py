
# This script can be used to copy new version of files (master files) from refe folder
# it will check all the xml files recursively in current folder and subfolders
# if XML file is present in the reference folder it will copy it from there and overwrite the files in current folder.

import os
import glob
from pathlib import Path
import shutil

# Get the list of all files and directories
path = "D:\\workdir\\devunits\\P11_2206_0322\\src\\sdpdtest\\python\\"
refPath = "D:\\backup\\new\\"

result = list(Path(path).rglob("*.[xX][mM][lL]"))

ref_filelist = os.listdir(refPath) 
        
count = 0
for r in result:
  #print(r)
  count = count + 1
  
print("Total count:" + str(count))

# Check if file is present in reference folder 
count = 1
for r in result:
   destPath = r
   filename = os.path.basename(r)
   # Check if file1 is present in reference files
   if filename in ref_filelist:
      print(filename)
      src = os.path.join(refPath,filename)   
      shutil.copyfile(src, destPath)
      print(str(count) + ":" + str(src) + "\n=>" + str(destPath))
      count += 1
       

print("Count:"+str(count-1))