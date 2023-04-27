import PyPDF2
import os.path
  
def readPDF(file):  

    text = ""
    # Check if input path file exists 
    if os.path.isfile(file) == False:
        print(file,"doesnt exist!")
        return text
    
    # creating a pdf file object
    pdfFileObj = open(file, 'rb')
      
    # creating a pdf reader object
    pdfReader = PyPDF2.PdfReader(pdfFileObj)
      
    for page in pdfReader.pages:
        text = text + page.extract_text()
      
    # closing the pdf file object
    pdfFileObj.close()
    
    return text

if __name__ == "__main__":
    text = readPDF('ShampooBottleRequirement.pdf')
    print(text)