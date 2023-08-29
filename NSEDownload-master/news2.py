# IMPORT ALL THE REQUIRED LIBRARIES
from bs4 import BeautifulSoup as BS
import requests as req
from datetime import datetime,timedelta
import os
import sys

urls = []
urls.append("https://www.businesstoday.in/markets/company-stock")
urls.append("https://www.businesstoday.in/markets/stocks")
urls.append("https://www.businesstoday.in/markets/trending-stocks")

current_date = datetime.today().strftime('%Y_%m_%d_%H_%M_%S')
filename = "news_" + current_date + ".txt"
script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
filepath = os.path.join(script_directory,filename)
print("Save in file:",filepath)
    
with open(filepath, 'w') as f:
            
    for url in urls: 
        f.write('\n')
        f.write('\n')
        webpage = req.get(url)
        trav = BS(webpage.content, "html.parser")
        M = 1
        
        for link in trav.find_all('a'):
            if(str(type(link.string)) == "<class 'bs4.element.NavigableString'>"
            and len(link.string) > 35):
                line = str(M)+"."+ link.string 
                #print(str(M)+".", link.string)
                f.write(line)
                f.write('\n')
        
                M += 1