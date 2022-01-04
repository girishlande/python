#this is representation of the class
class Animal():
    def __init__(self):
        print("Animal created")
        
    def speak(self):
        print("Animal speaking")
        
class Dog(Animal):
    def __init__(self):
        print("Dog created")
    
    def speak(self):
        print("WOOF WOOF!")    
        
class Cat(Animal):
    def __init__(self):
        print("Cat created")
        
    def speak(self):
        print("MEOW MEOW")
        
class Book():
    def __init__(self,title,author,pages):
        self.title = title
        self.author = author
        self.pages = pages
    
    def __str__(self):
        return f"{self.title} by {self.author}"
        
    def __len__(self):
        return self.pages
        
    def __del__(self):
        print(f"A book object '{self.title}' is deleted")
        
        
b = Book("Master in Python","Girish",200)
print(f"Book: {b}")
print(f"string: {str(b)}")
print(f"Length of book: {len(b)} pages")
del(b)
