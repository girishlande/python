import nltk
from nltk.tokenize import sent_tokenize
from nltk.tokenize import word_tokenize

text = r'''    
The turbocharger width shall be 210mm . 
The turbocharger height shall be 320mm . 
The turbocharger length shall be 240mm . 
The turbocharger shall have carbon seals.
The turbocharger shall have a boost range > 16psi .
The turbocharger shall be able to withstand a maximum sustained rpm of 160,000 rpm.
The turbocharger shall have an overall unit efficiency greater than 0.70 .


    '''

def analyze_Sentence(s):
    s = s.replace(' > '," greater than ");
    print(s)
    words = word_tokenize(s)
    pos_tagged_text = nltk.pos_tag(words)
    #print(pos_tagged_text)
    
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
    
    # x==10.0
    # x<10.0
    #x>10.0
    #x<=10.0
    #x>=10.0
    #10.0 < x < 20.0
    
    formula_list = []
    formula = ""
    nountext = "_".join(nouns)
    if (range):
        if (len(values)==2):
            formula = str(values[0]) + "<" + nountext + "<" + str(values[1])
            formula_list.append(formula)
    elif(compareHigh):
        if (len(values)==1):
            formula = nountext + ">" + str(values[0])
            formula_list.append(formula)
    elif(compareLow):
        if (len(values)==1):
            formula = nountext + "<" + str(values[0])
            formula_list.append(formula)
    else:
        for i in values:
            formula = nountext + "==" + str(i)
            formula_list.append(formula)
            
    for f in formula_list:
        print("formula:", f)
    
sentences = sent_tokenize(text)
for i,s in enumerate(sentences):
    analyze_Sentence(s)    