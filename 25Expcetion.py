
print("Main function")

try:
    print("we are in try block")
    #ans = 10 + '10'
    ans = 10 + 10
    print("result =",ans)
except:
    print("Something went wrong in try block")
else:
    print("Addition was good")
    
print("Main function after try catch block")