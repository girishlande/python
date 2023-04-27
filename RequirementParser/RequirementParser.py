import nltk
from nltk.tokenize import sent_tokenize
from nltk.tokenize import word_tokenize
from enum import Enum
from CheckEARSSyntax import checkSyntax
from CheckEARSSyntax import SentenseType

text = r'''    
Height:10mm
height is 10mm.
height should be 10mm minimum.
weight should be 50gm maximum.
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
The title angle should be greater than equal to 10degrees.
    '''

global_roin = 0;    
req_list = []
req_sentense_list = []

class CheckingLevel(Enum):
    ERROR=1
    WARNING=2
    INFORMATION=3
    
class RequirementSentense:
    def __init__(self):
        self.sentense = ""  
        self.evaluation = SentenseType.EVENTDRIVEN
        self.suggestion = ""
    
    def evaluationText(self):
        etext = "Evaluation:" 
        if (self.evaluation==SentenseType.EVENTDRIVEN):
            etext += "Event Driven"
        elif (self.evaluation==SentenseType.UBIQUTUS):
            etext += "Ubiqutus"
        elif (self.evaluation==SentenseType.STATEDRIVEN):
            etext += "State Driven" 
        else:
            etext += "Unknown" 
            
        return etext
            
    def toText(self):
        text = "------------------------------\n"
        text += self.sentense + "\n"
        etext = self.evaluationText()
        text += etext + "\n"
        text += self.suggestion + "\n"
        return text 
        
class Requirement:
    def __init__(self):
        global global_roin
        global_roin = global_roin + 1
        self.roin = '00' + str(global_roin);    
        self.name = "REQ_" + self.roin
        self.text = ""
        self.valuetype = ""
        self.compare = ""
        self.min = ""
        self.max = ""
        self.checkinglevel = CheckingLevel.ERROR
        self.formula = ""
        
    def createCopy(self):
        copy = Requirement()
        copy.text = self.text
        copy.valuetype = self.valuetype
        copy.compare = self.compare
        copy.min = self.min
        copy.max = self.max
        copy.checkinglevel = self.checkinglevel
        copy.formula = self.formula
        return copy
        
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
        print("Formula:",self.formula)
        
    
def analyze_Sentence(s):
    words = word_tokenize(s)
    failreason=['reason']
    evalu=[SentenseType.UNKNOWN]

    checkSyntax(words,failreason,evalu)
        #print("Syntax of the requirement is not according to EARS Ubiquitos. Please change the syntax.")
    Sent = RequirementSentense()
    Sent.sentense=s
    Sent.evaluation=evalu[1]
    Sent.suggestion=failreason[1]
    req_sentense_list.append(Sent)
    # if(evalu[1]!=SentenseType.UBIQUTUS):
    #     return



    pos_tagged_text = nltk.pos_tag(words)
    #print(pos_tagged_text)
    
    REQ = Requirement()
    REQ.text = s
    
    nouns = set()
    negation = False
    values = []
    range = False
    compareHigh = False
    compareLow = False
    compareHighEqual=False
    compareLowEqual=False
    compareMax = {'more','greater','heavier','larger'}
    compareMin = {'less','smaller','lesser','shorter'}
    
    for k,v in pos_tagged_text:
        # if (v=="NN" or v=="MD" or v=="CD" or v=="IN" or v=="JJR" or v=="RB"):
             # print(k,":",v)
        if (v=='NN'):
            nouns.add(k.lower())
        if (v=='CD'):
            values.append(k)
        if (v=='IN' and (k=='between' or k=='within')):
            range = True
        if (v=='JJR' and k in compareMax ):
            compareHigh = True
        if (v=='JJR' and k in compareMin ):
            compareLow = True    
        if (v=='RB' and k=='not'):
            negation = True
    
    found=s.find('greater than equal')
    if(found<=0):
        found=s.find('minimum')
    if(found>0):
        compareHighEqual=True
    found2=s.find('less than equal')
    if(found2<=0):
        found2=s.find('maximum')
    if(found2>0):
        compareLowEqual=True

    if (compareHigh and negation):
        compareHigh = False
        compareLow = True
    elif (compareLow and negation):
        compareLow = False
        compareHigh = True
    elif(compareHighEqual and negation):
        compareHighEqual=False
        compareLow = True
    elif(compareLowEqual and negation):
        compareLowEqual=False
        compareHigh=True

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
            formula = str(values[0]) + "<=" + nountext + "<=" + str(values[1])
            formula_list.append(formula)
            REQ.valuetype = "Number"    
            REQ.compare="Range"
            REQ.min = str(values[0])
            REQ.max = str(values[1])
    elif(compareHighEqual):
        if(len(values)==1):
            formula = nountext + ">=" + str(values[0])
            formula_list.append(formula)
            REQ.valuetype = "Number"   
            REQ.compare="GreaterThanOrEqual"
            REQ.min = str(values[0])
    elif(compareLowEqual):
        if(len(values)==1):
            formula = nountext + "<=" + str(values[0])
            formula_list.append(formula)
            REQ.valuetype = "Number"   
            REQ.compare="LessThanOrEqual"
            REQ.max = str(values[0])
    elif(compareHigh):
        if (len(values)==1):
            formula = nountext + ">" + str(values[0])
            formula_list.append(formula)
            REQ.valuetype = "Number"   
            REQ.compare="GreaterThan"
            REQ.min = str(values[0])
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
    
    # Iterate on all formulas and use it in requirement object and add requirement to list 
    for i,f in enumerate(formula_list):
        #print("formula:", f)
        if i==0:
            REQ.formula = f
            req_list.append(REQ)        
            #REQ.printNode()
        else:
            rcopy = REQ.createCopy()
            rcopy.formula = f
            req_list.append(rcopy)        
            #rcopy.printNode()
    
def parseText(text):
    req_list.clear()
    req_sentense_list.clear()
    sentences = sent_tokenize(text)
    for i,s in enumerate(sentences):
        #print("\n",i,":",s)
        analyze_Sentence(s)    
        
if __name__ == "__main__":
    parseText(text)
    