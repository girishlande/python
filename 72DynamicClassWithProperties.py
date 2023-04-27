class Object(object):
    pass

a = Object()

params = ['attr1', 'attr2', 'attr3']
for p in params:
    setattr(a, p, p)
    
print(a.__dict__)

for k,v in a.__dict__.items() : 
    print(k,"=>",v)
    
