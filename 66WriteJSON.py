import json 

def readFile():
    myfile = open("D:\\input.txt")
    output = myfile.read()
    print(output)
    print()
    myfile.close()

def readFile1():
    for line in open("D:\\input.txt"):
        print(line)
    
def writeFile():
    myfile = open("D:\\input.txt","a+")
    myfile.write("\nHello Suhas, how are you?");
    myfile.close()
    print()

def obj_dict(obj):
    return obj.__dict__


data = []
with open('input.txt', 'r') as file:
    data = file.read().replace('\n', '')
    
json_string = json.dumps(data, default=obj_dict)
print("line:" + json_string)

obj=""
readingobj=False
stack = []
entries = []
for ch in json_string:
    if ch=='[':
        stack.append('[')
        #print("opening array")
    elif ch=='{':
        stack.append('{')
        #print("opening object")
        obj=""
        readingobj=True
        continue
    elif ch==']':
        st = stack.pop()
        if (st!='['):
           print("Incorrect match for ]")
        else :
            pass
            #print("closing array")
            
    elif ch=='}':
        st = stack.pop()
        if (st!='{'):
           print("Incorrect match for }")
        else :
            #print("closing Object:" + obj)
            d = dict(x.split(":") for x in obj.split(","))
            d1 = {}
            for k, v in d.items():
                #print(k,"=>", v)
                k = k.replace('"','')
                k = k.replace('\'','')
                v = v.replace('"','')
                v = v.replace('\'','')
                
                d1[k] = v
                
                
            entries.append(d1)    
    
    if readingobj:
       obj=obj+ch

# Convert entries to JSON string        
print("output:") 
json_string = json.dumps(entries)     
#print(json_string)
# Convert JSON string to JSON object 
json_object = json.loads(json_string)   

print("\nJSON data :")
for j in json_object: 
    print(j)
    
print("\nJSON data get all names:")
for j in json_object: 
    print(j["name"])

print("\nJSON data get all Roll numbers:")
for j in json_object: 
    print(j["roll"])

#readFile()
#writeFile()
#readFile()
#readFile1()