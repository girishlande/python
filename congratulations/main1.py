from PIL import Image, ImageDraw, ImageFont, ImageOps
import csv
import random
from random import randint
import os
import sys
from datetime import datetime
import numpy

now = datetime.now() 

def randomcolor():
    r = randint(0, 255)
    g = randint(0, 255)
    b = randint(0, 255)
    rand_color = (r, g, b)
    return rand_color

def random_message(filename):
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
        
def get_cake_image():
    r = randint(1, 4)
    cakeimage1 = f"images/cake.jpg"
    cakeimage2 = f"images/cake.png"
    script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
    path1 = os.path.join(script_directory, cakeimage1)
    path2 = os.path.join(script_directory, cakeimage2)
    
    if os.path.isfile(path1):
        return path1
    if os.path.isfile(path2):
        return path2
    return ""

def get_star_image():
    starimage = f"images/star1.png"
    script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
    path1 = os.path.join(script_directory, starimage)
    return path1

def get_star1_image():
    starimage = f"images/star2.png"
    script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
    path1 = os.path.join(script_directory, starimage)
    return path1

def get_baloon_image():
    starimage = f"images/baloon.png"
    script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
    path1 = os.path.join(script_directory, starimage)
    return path1
    
def add_stars(img):
    star_img_path = get_star_image()
    if os.path.isfile(star_img_path):
        star_img = Image.open(star_img_path)
        star_img = star_img.resize((20,20))
        num_stars = 30
        for i in range(num_stars):
            x = randint(0,500) 
            y = randint(0,500) 
            img.paste(star_img, (x,y), mask = star_img)
            
def add_topings(img,toping_path,xworld,yworld,resize_x,resize_y,num_instances):
    if os.path.isfile(toping_path):
        toping_img = Image.open(toping_path)
        toping_img = toping_img.resize((resize_x,resize_y))
        xspace=numpy.random.uniform(1 , xworld,num_instances)
        yspace=numpy.random.uniform(1 , yworld,num_instances)
        for i,x in enumerate(xspace):
            x = round(x)
            y = round(yspace[i])
            img.paste(toping_img, (x,y), mask = toping_img)            
                
def create_image(name,filename):
    width = 512
    height = 512
    img = Image.new('RGB', (width, height), color=randomcolor())
    
    #add_stars(img)
    #star_image = get_star_image()
    #add_topings(img,star_image,20,20,20)
    star_image = get_star1_image()
    add_topings(img,star_image,500,500,50,50,20)
    
    ballon_img_path = get_baloon_image()
    add_topings(img,ballon_img_path,400,400,150,150,2)
    
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
    cakeimage = get_cake_image()
    if cakeimage:
        #print("Selected image:",cakeimage)
        if os.path.isfile(cakeimage):
            img1 = Image.open(cakeimage)
            img1 = img1.resize((120,120))
            img.paste(img1, (380,10), mask = img1)
        else:
            print("Cake image not found")    
    else:
        print("Cake image not found")
    
    img_with_border = ImageOps.expand(img,border=10,fill='black')
    img_with_border.save(filename)


with open('data.csv') as csv_file:
    csv_reader = csv.reader(csv_file, delimiter=',')
    line_count = 0
    for row in csv_reader:
        if not row[0]:
            pass
        if line_count == 0:
            line_count+=1
        else:
            line_count+=1
            #print(f'\t{row[0]} has birthday on {row[1]}')
            filename = row[0] + ".png"
            
            datetime_object = datetime.strptime(row[1], '%d/%m/%Y')
            #print(datetime_object)
            d1 = now.date()
            d2 = datetime_object.date()
            #create_image(row[0],filename)
            if d1.day==d2.day and d1.month==d2.month:
                print(f"{row[0]} has birthday today")
                create_image(row[0],filename)
            
            