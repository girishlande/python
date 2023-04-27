import nltk
from nltk.tokenize import sent_tokenize
from nltk.tokenize import word_tokenize
from enum import Enum

text = r'''    
Volume Requirement
The expect shampoo volume is 250ml (250,000mm3).
Height Requirement
The height of the shampoo bottle should be not more than 180mm.
Width Requirement
The width of the shampoo bottle should be between 60mm and 80mm.
Depth Requirement
The depth of the shampoo bottle should be between 30mm and 50mm.
Thickness Requirement
The plastic thickness of the shampoo bottle should be greater than 1mm.
Tilt Angle Requirement
The title angle should be greater than 10degrees.
    '''

global_roin = 1;    
req_list = []

class CheckingLevel(Enum):
    ERROR=1
    WARNING=2
    INFORMATION=3

class Requirement:
    def __init__(self):
        global global_roin
        global_roin = global_roin + 1
        self.roin = '00' + str(global_roin);    
        self.name = ""
        self.text = ""
        self.valuetype = ""
        self.compare = ""
        self.min = ""
        self.max = ""
        self.checkinglevel = CheckingLevel.ERROR
        
    def printNode(self):
        print("------------------------------------")
        print("Roin:",self.roin)
        print("Name:",self.name)
        print("Text:",self.text)
        print("ValueType:",self.valuetype)
        print("Compare:",self.compare)
        print("Min:",self.min)
        print("Max:",self.max)
        print("CheckingLevel:",self.checkinglevel)
        
    
def analyze_Sentence(s):
    words = word_tokenize(s)
    pos_tagged_text = nltk.pos_tag(words)
    #print(pos_tagged_text)
    
    REQ = Requirement()
    REQ.name = "REQ" + REQ.roin
    REQ.text = s
    
    nouns = set()
    negation = False
    values = []
    range = False
    compareHigh = False
    compareLow = False
    compareMax = {'more','greater','heavier'}
    compareMin = {'less','smaller','lesser'}
    
    for k,v in pos_tagged_text:
        # if (v=="NN" or v=="MD" or v=="CD" or v=="IN" or v=="JJR" or v=="RB"):
             # print(k,":",v)
        if (v=='NN'):
            nouns.add(k.lower())
        if (v=='CD'):
            values.append(k)
        if (v=='IN' and k=='between'):
            range = True
        if (v=='JJR' and k in compareMax):
            compareHigh = True
        if (v=='JJR' and k in compareMin):
            compareLow = True    
        if (v=='RB' and k=='not'):
            negation = True
    
    if (compareHigh and negation):
        compareHigh = False
        compareLow = True
    elif (compareLow and negation):
        compareLow = False
        compareHigh = True
    
    # x==10.0  Equal
    # x<10.0   Less than
    # x>10.0   Greater than 
    # x<=10.0  Less than Equal 
    # x>=10.0  Greater than Equal
    # 10.0 < x < 20.0 Range 
    
    formula_list = []
    formula = ""
    nountext = "_".join(nouns)
    if (range):
        if (len(values)==2):
            formula = str(values[0]) + "<" + nountext + "<" + str(values[1])
            formula_list.append(formula)
            REQ.valuetype = "Number"    
            REQ.compare="Range"
            REQ.min = str(values[0])
            REQ.max = str(values[1])
    elif(compareHigh):
        if (len(values)==1):
            formula = nountext + ">" + str(values[0])
            formula_list.append(formula)
            REQ.valuetype = "Number"   
            REQ.compare="GreaterThan"
            REQ.max = str(values[0])
    elif(compareLow):
        if (len(values)==1):
            formula = nountext + "<" + str(values[0])
            formula_list.append(formula)
            REQ.valuetype = "Number"
            REQ.compare="LessThan"
            REQ.max = str(values[0])            
    else:
        for i in values:
            formula = nountext + "==" + str(i)
            formula_list.append(formula)
            REQ.valuetype = "Number"   
            REQ.compare="Equal"
            REQ.max = str(values[0])     

    # Iterate on all formulas and print it         
    for f in formula_list:
        print("formula:", f)
    
def parseText(text):
    sentences = sent_tokenize(text)
    for i,s in enumerate(sentences):
        print(i,":",s)
        analyze_Sentence(s)    
        
if __name__ == "__main__":
    parseText(text)
    