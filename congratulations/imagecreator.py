from person import Person
from PIL import Image, ImageDraw, ImageFont

class BaseCreator:
    def __init__(self) -> None:
        self.output_image = "result.png"
        self.xoff = 0
        self.yoff = 0
        
class F1(BaseCreator):
    def __init__(self) -> None:
        super().__init__()
        self.input_image = "f1.png"
        self.input_image_path = "./images/" + self.input_image
        pass
    
    def createimage(self,person):
        print(person.name)
        print(person.message)
        img = Image.open(self.input_image_path)
        imgDraw = ImageDraw.Draw(img)
        myFont = ImageFont.truetype("georgia.ttf", 50)
        imgDraw.text((180+self.xoff, 200+self.yoff), person.name, fill=(0, 0, 0),font=myFont)
        imgDraw.text((180+self.xoff, 250+self.yoff), person.message, fill=(0, 0, 0),font=myFont)
        img.save(self.output_image)

        print("Image created!")