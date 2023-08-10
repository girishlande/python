class Person:
    def __init__(self) -> None:
        self.name = ""
        self.address = ""
        self.message = ""
    
    def isok(self):
        return self.name != ""    