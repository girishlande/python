from PIL import Image, ImageDraw, ImageFont, ImageOps
import csv
import random
from random import randint
import os

from datetime import datetime
import pandas

now = datetime.now() 
dirpath = os.path.dirname(__file__)
datafile = os.path.join(dirpath,"data.csv")

def randomcolor():
    r = randint(0, 255)
    g = randint(0, 255)
    b = randint(0, 255)
    rand_color = (r, g, b)
    return rand_color

def random_message(filename):
    filename = os.path.join(dirpath,filename)
    text_file = open(filename, "r")
    lines = text_file.readlines()
    
    plines = []
    count=1
    for line in lines:
        if len(line)>10: 
            #print(count,line)
            plines.append(line)
            count+=1
    text_file.close()
    random_number = random.randint(1, len(plines))
    msg = plines[random_number-1]
    
    clen = 0
    multilinemessage = ""
    maxlen = 30
    res = msg.split()
    for i in res:
        clen = clen + len(i) + 1
        if clen > maxlen:
            multilinemessage += "\n"
            clen = len(i)    
        multilinemessage += i 
        multilinemessage += " "
        
    return multilinemessage    
        
    

def create_image(name,filename):
    width = 512
    height = 512
    img = Image.new('RGB', (width, height), color=randomcolor())
    imgDraw = ImageDraw.Draw(img)
    myFont = ImageFont.truetype("georgia.ttf", 40)
    name += ","
    imgDraw.text((50,50), name, fill=(0, 0, 0),font=myFont)
    myFont = ImageFont.truetype("georgia.ttf", 30)
    
    xpos = 50
    ypos = 150
    
    if "and" in name:
        msg = random_message("anniversarymessages.txt")
        imgDraw.text((xpos,ypos), msg, fill=(0, 0, 0),font=myFont)
    else:
        msg = random_message("birthdaymessages.txt")
        imgDraw.text((xpos,ypos),msg, fill=(0, 0, 0),font=myFont)
        
        
    date_time = now.strftime("%m/%d/%Y")    
    d = now.strftime("%d %b, %Y")
    from_message = "Sanu \n" + d    
    imgDraw.text((300,400),from_message, fill=(0, 0, 0),font=myFont)
        
    #img.save(filename1
    # Opening the primary image (used in background)
    cakefile = os.path.join(dirpath,"cake.png")
    img1 = Image.open(cakefile)
    img1 = img1.resize((100,100))
    img.paste(img1, (400,10), mask = img1)

    img_with_border = ImageOps.expand(img,border=10,fill='black')
    img_with_border.save(filename)


data = pandas.read_csv(datafile)
names = data.name
for i in names:
    filename = os.path.join(dirpath,i+".png")
    create_image(i,filename)