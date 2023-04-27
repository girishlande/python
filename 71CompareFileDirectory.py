import glob, os
import sys
import filecmp
from filecmp import dircmp
import shutil


result = filecmp.cmp("D:\\11.txt", "D:\\12.txt")
print("result:",result);

filepath1 = "D:\\3"
filepath2 = "D:\\4"

c = filecmp.dircmp(filepath1, filepath2)

def report_recursive(dcmp):
    for name in dcmp.diff_files:
        print("DIFF file %s found in %s and %s" % (name, 
            dcmp.left, dcmp.right))
    for name in dcmp.left_only:
        print("ONLY LEFT file %s found in %s" % (name, dcmp.left))
    for name in dcmp.right_only:
        print("ONLY RIGHT file %s found in %s" % (name, dcmp.right))
    for sub_dcmp in dcmp.subdirs.values():
        print_diff_files(sub_dcmp)    

report_recursive(c)