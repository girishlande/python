# to work with image you need a libary Pillow 
# pip install Pillow 
# you can crop,rotate, paste, resize, change transparency of image 

from PIL import Image 
mac = Image.open("data/duck.png");
#mac.show();
print("Size:", mac.size);
print("Filename:",mac.filename);
print("Format:",mac.format_description);

cropped = mac.crop((0,0,500,500));
#cropped.show();

#mac.resize((500,500));
#mac.show();

#mac.putalpha(128);
#mac.save("d:/new.png");
mac.show();