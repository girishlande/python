import os
from moviepy.video.io.ffmpeg_tools import ffmpeg_extract_subclip

def convertMinToSeconds(s):
    #print(f"Input:{s}")
    words = s.split(':')
    #print(words)
    seconds = int(words[0])*60 + int(words[1])
    #print("seconds:",seconds)
    return seconds
    
def pairwise(iterable):
    a = iter(iterable)
    return zip(a, a)    

fname = "17.mp4"
t = ["10:23","11:38"]

cnt=1

for x, y in pairwise(t):
    start_time = convertMinToSeconds(x)
    end_time = convertMinToSeconds(y)
     
    filename, file_extension = os.path.splitext(fname)
    oname = filename + "_" + str(cnt) + file_extension
    print(f"Fetch from {start_time} to {end_time} create:{oname}")
    cnt+=1
    
    ffmpeg_extract_subclip(fname, start_time, end_time, oname)