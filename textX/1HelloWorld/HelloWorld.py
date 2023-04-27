from textx import metamodel_from_file
mm = metamodel_from_file("hello.tx")
hellomodel = mm.model_from_file("example.hello")
print("Greetings")
for x in hellomodel.to_greet : 
    print(x.name)
