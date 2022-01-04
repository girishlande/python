#write a class to find the distance between 2 points and slope of the line

class Point():
    def __init__(self,x,y):
        self.x = x
        self.y = y
        print(f"Point created {self}")
    
    def __str__(self):
        return f"({self.x},{self.y})"
        
    
class Line():
    def __init__(self,point1,point2):
        self.p1 = point1
        self.p2 = point2
        print(f"line created between {p1} and {p2}")
        
    def distance(self):
        xdiff = self.p2.x - self.p1.x
        ydiff = self.p2.y - self.p1.y
        xdiff = xdiff ** 2
        ydiff = ydiff ** 2
        result = (xdiff+ydiff)** 0.5
        return result
     
    def slope(self):
        ydiff = self.p2.y - self.p1.y
        xdiff = self.p2.x - self.p1.x
        return ydiff / xdiff
        
 
p1 = Point(10,10)
p2 = Point(20,20)
 
line1 = Line(p1,p2)
print(f"Line distance: {line1.distance()}")
print(f"Line slope: {line1.slope()}")