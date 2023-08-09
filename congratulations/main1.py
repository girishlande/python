from PIL import Image, ImageDraw, ImageFont, ImageOps
import csv
import random
from random import randint

from datetime import datetime

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
    from_message = "Happy Family \n" + d    
    imgDraw.text((300,400),from_message, fill=(0, 0, 0),font=myFont)
        
    #img.save(filename1
    # Opening the primary image (used in background)
    img1 = Image.open(r"cake.png")
    img1 = img1.resize((100,100))
    img.paste(img1, (400,10), mask = img1)

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
            if d1.day==d2.day and d1.month==d2.month:
                print(f"{row[0]} has birthday today")
                create_image(row[0],filename)
            
            