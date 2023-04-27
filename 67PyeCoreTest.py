from pyecore.ecore import EClass, EAttribute, EString, EObject

print("---------------------Creating MetaModel on Fly------------------");
A = EClass('A')  # We create metaclass named 'A'
A.eStructuralFeatures.append(EAttribute('myname', EString, default_value='new_name')) # We add a name attribute to the A metaclass
a1 = A()  # We create an instance 
print(a1.myname)
a1.myname = 'Girish Lande'
print(a1.myname); 
 
print(isinstance(a1,EObject));
print(a1.eClass);
print(a1.eClass.eClass);
print(a1.eClass.eStructuralFeatures);


print("--------------Navigating in Model------------------");
from pyecore.ecore import EClass, EReference

A = EClass('A')
A.eStructuralFeatures.append(EReference('container1', containment=True,
                                        eType=A, upper=-1))
A.eStructuralFeatures.append(EReference('container2', containment=True,
                                        eType=A, upper=-1))

# we create an element hierarchy which looks like this:
# +- a1
#   +- a2    (in container1)
#     +- a4  (in container1)
#   +- a3    (in container2)
a1, a2, a3, a4 = A(), A(), A(), A()
a1.container1.append(a2)
a2.container1.append(a4)
a1.container2.append(a3)

print(a1.eContents); # return list containing a2 and a3

# this will print repr for a2, a4 and a3
for child in a1.eAllContents():
    print(child)
    
print("Explore dynamic metamodel")    
print(dir(A));

