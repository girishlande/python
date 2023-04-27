from pyecore.ecore import *

# Define a Root that can contain A and B instances,
# B instances can hold references towards A instances
Root = EClass('Root')
A = EClass('A')
B = EClass('B')
A.eStructuralFeatures.append(EAttribute('name', EString))
B.eStructuralFeatures.append(EReference('to_many_a', A, upper=-1))
Root.eStructuralFeatures.append(EReference('a_container', A, containment=True))
Root.eStructuralFeatures.append(EReference('b_container', B, contaimnent=True))

# Add all the concepts to an EPackage
my_ecore_schema = EPackage('my_ecor', nsURI='http://myecore/1.0', nsPrefix='myecore')
my_ecore_schema.eClassifiers.extend([Root, A, B])

from pyecore.resources import ResourceSet, URI

rset = ResourceSet()
resource = rset.create_resource(URI('D:/my_ecore_schema.ecore'))  # This will create an XMI resource
resource.append(my_ecore_schema)  # we add the EPackage instance in the resource
resource.save()  # we then serialize it