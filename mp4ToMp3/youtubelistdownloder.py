from pytube import YouTube
from pytube import Playlist
from math import ceil
import sys
import threading
from threading import Thread
from pathlib import Path
import os
from moviepy.editor import *

links = []
link = []
size = 0
downloadpath = str(Path.home() / "Downloads")
downloadvideo = False
files = [[],[],[],[]]

class FileRecord:
    def __init__(self, path):
        self.path = os.path.normpath(path)
        self.filename = Path(self.path).stem
        self.dirname = os.path.dirname(path)
        self.status = "Loaded"
        outpath = os.path.join(self.dirname, self.filename + '.mp3')
        self.outfile = os.path.normpath(outpath)
        
def MP4ToMP3(mp4, mp3):
    FILETOCONVERT = AudioFileClip(mp4)
    FILETOCONVERT.write_audiofile(mp3)
    FILETOCONVERT.close()

def downloader1():
    for i in link[0]:
        try: 
          yt = YouTube(i)
          ys = yt.streams.get_audio_only()
          #if downloadvideo:
          #  ys = yt.streams.get_highest_resolution()
          filename = ys.download(downloadpath)
          print("threading 1 -->  " + filename.split('/')[-1] + ' Downloaded')
          files[0].append(filename.split('/')[-1])  
        except Exception as e:
            print("An error has occurred:",e)   
            
def downloader2():
    if (len(link)<=1):
        return
        
    for i in link[1]:
        try:
          yt = YouTube(i)
          ys = yt.streams.get_audio_only()
          #if downloadvideo:
          #  ys = yt.streams.get_highest_resolution()
          filename = ys.download(downloadpath)
          print("threading 2 -->  " + filename.split('/')[-1] + ' Downloaded')
          files[1].append(filename.split('/')[-1])  
        except Exception as e:
            print("An error has occurred:",e)  
      
def downloader3():
    if (len(link)<=2):
        return
    for i in link[2]:
        try:
          yt = YouTube(i)
          ys = yt.streams.get_audio_only()
          #if downloadvideo:
          #  ys = yt.streams.get_highest_resolution()
          filename = ys.download(downloadpath)
          print("threading 3 -->  " + filename.split('/')[-1] + ' Downloaded')
          files[2].append(filename.split('/')[-1])  
        except Exception as e:
            print("An error has occurred:",e)  

def downloader4():
    if (len(link)<=3):
        return
    for i in link[3]:
        try:
          yt = YouTube(i)
          ys = yt.streams.get_audio_only()
          #if downloadvideo:
          #  ys = yt.streams.get_highest_resolution()
          filename = ys.download(downloadpath)
          print("threading 4 -->  " + filename.split('/')[-1] + ' Downloaded')
          files[3].append(filename.split('/')[-1]) 
        except Exception as e:
                    print("An error has occurred:",e)            

def split_link(links,size):
    for i in range(0,len(links),size):
        yield links[i:i+size]
      
def downloadPlaylist(url,refpath,downloadvideoFlag=False): 
    global links
    global link
    global downloadpath
    global downloadvideo
    
    downloadpath = refpath
    downloadvideo = downloadvideoFlag
    
    try:
        p = Playlist(url)
    except:
        print('usage: python3 {} url'.format(__file__.split('/')[-1]))
        sys.exit(0)
        
    #global links
    print("Playlist Name : {}\nChannel Name  : {}\nTotal Videos  : {}\nTotal Views   : {}".format(p.title,p.owner,p.length,p.views))
    
    downloadpath = os.path.join(downloadpath, p.title) 
    if not os.path.exists(downloadpath):
        os.makedirs(downloadpath)
    
    try:
        for url in p.video_urls:
            links.append(url)
    except:
        print('Playlist link is not valid.')
        sys.exit(0)
        
    size = ceil(len(links)/4)
           
    link = list(split_link(links,size))
    print("Downloading Started...\n")

    t1 = threading.Thread(target=downloader1, name='d1')
    t2 = threading.Thread(target=downloader2,name='d2')
    t3 = threading.Thread(target=downloader3, name='d3')
    t4 = threading.Thread(target=downloader4,name='d4')
    t1.start()
    t2.start()
    t3.start()
    t4.start() 
    
    t1.join()
    t2.join()
    t3.join()
    t4.join()
    
    allfiles = files[0] + files[1] + files[2] + files[3]
    print("Downloaded files:")
   
if __name__ == "__main__":
    url = "https://www.youtube.com/watch?v=ehO-uRgtqEU&list=PLuO9GcLbR5sRKGBWNNfFlXOKuSbm9rUMc&index=2"
    downloadPlaylist(url,downloadpath)
else:
    print ("Executed when imported")    
