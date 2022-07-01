# Python script to create remaster files using athena folder content
# author: Girish Lande

# When to use ?
# Script can be used after you have run all the failing auto tests.
# it will look at the athena folder and will copy all new XML files in backup folder.
# it will rename new XML files to master XML files
# it will copy previous change history from Old master files
# it will add history entry from the script

# how to use ?
# rename athena work path to unit which you are using
# Udate comment as per your date and description

import os
import shutil

#           <!--    Date      Name                    Description of Change            -->
newcomment="<!-- 4-Apr-2022  Girish Lande             Re-master after adding wrapper block -->\n"

athenaWorkPath = "D:\\workdir\\devunits\\P11_2206_0322\\athena\\work"

backupNewMasterPath = "D:\\backup\\new"
backupOldMasterPath = "D:\\backup\\old"


def clearFolder(folder):
    for filename in os.listdir(folder):
        file_path = os.path.join(folder, filename)
        try:
            if os.path.isfile(file_path) or os.path.islink(file_path):
                os.unlink(file_path)
            elif os.path.isdir(file_path):
                shutil.rmtree(file_path)
        except Exception as e:
            print('Failed to delete %s. Reason: %s' % (file_path, e))
        
def createBackupFolder():
    if not os.path.exists(backupNewMasterPath):
        os.makedirs(backupNewMasterPath)
    if not os.path.exists(backupOldMasterPath):
        os.makedirs(backupOldMasterPath)

    clearFolder(backupNewMasterPath)
    clearFolder(backupOldMasterPath)
    
    
print("Girish")
resultedfileList=[]


dir_list = os.listdir(athenaWorkPath) 
mastercount = 0

createBackupFolder()

# Iterate on all new XML files in input athena work folder. 
# Create a copy of them in backup folder 
for x in dir_list:
    if x.endswith("new.xml"):
        #print(x)
        masterFileName = x.replace("--new.xml","--master.xml")
        print(masterFileName)
        masterFileFullPath = os.path.join(athenaWorkPath,masterFileName)
        if not os.path.exists(masterFileFullPath):
            print("======================== " + masterFileFullPath + "doesnt exist ====================================")

        # copy new xml file to backup folder with "master" name in "new" folder 
        src = os.path.join(athenaWorkPath,x)
        dstNew = os.path.join(backupNewMasterPath,masterFileName)                
        shutil.copyfile(src, dstNew)

        # copy old xml master file to backup folder "old"
        src = masterFileFullPath
        dstOld = os.path.join(backupOldMasterPath,masterFileName)                
        shutil.copyfile(src, dstOld)
        
        # copy comments block from old master file new master file
        commentBlockStart = False
        comments = []
        index = 0
        linecount = 0
        with open(dstOld) as f:
            for line in f:        
                if "Date" in line and "Name" in line and "Description" in line:
                    commentBlockStart = True
                    index = linecount + 1
                    continue
                elif "$HISTORY$" in line:
                    break
                if commentBlockStart:    
                    comments.append(line)    
                linecount += 1    
                    
        # print comment block             
        #print("Comment block")
        #for line in comments:
        #    print(line)
        
        # Read all lines of new master file in array 
        with open(dstNew, "r") as f:
            contents = f.readlines()
            #Insert Comments block at given location
            for line in comments:        
                contents.insert(index, line)
                index+=1
            contents.insert(index,newcomment)
            
        # Open new master file in write mode and add contents in it
        with open(dstNew, "w") as f:
            contents = "".join(contents)
            f.write(contents)
                
        mastercount+=1
        
        
        

print("Total master files: " + str(mastercount))