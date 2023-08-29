import requests
import json 
from datetime import datetime,timedelta
import os
import sys

class Formatter:
    def __init__(self) -> None:
        current_date = datetime.today().strftime('%Y_%m_%d_%H_%M_%S')
        filename = current_date + ".txt"
        script_directory = os.path.dirname(os.path.abspath(sys.argv[0]))
        self.filepath = os.path.join(script_directory,filename)
        print("Save in file:",self.filepath)
        
        pass
    
    def print_json(self,jsondata):
        if not jsondata:
            return
        
        for d in jsondata:
            print("-"*80)
            datetime_str = d["publishedAt"]
            datetime_object = datetime.strptime(datetime_str, '%Y-%m-%dT%H:%M:%SZ')
            current_date = datetime_object.strftime('%d.%m.%Y %H:%M')
            print(current_date, " ", d["author"])
            print(d["title"])
            print(d["description"])
    
    def write_json(self,jsondata):
        if not jsondata:
            return
        
        with open(self.filepath, 'a',encoding="utf-8") as f:
            #sys.stdout = f
            for d in jsondata:
                print("-"*80)
                datetime_str = d["publishedAt"]
                datetime_object = datetime.strptime(datetime_str, '%Y-%m-%dT%H:%M:%SZ')
                current_date = datetime_object.strftime('%d.%m.%Y %H:%M')
                print(current_date, " ", d["author"].strip("\u200b").strip("\u015a"))
                print(d["title"].strip("\u200b").strip("\u015a"))
                print(d["description"].strip("\u200b").strip("\u015a"))
            print()
            print()    
            f.close()    
        
    def read_json(self):
        with open('1.json') as f:
            data = json.load(f)
            return data
        return None
            
class StockNewsReader:
    def __init__(self) -> None:
        self.NEWS_ENDPOINT = "https://newsapi.org/v2/everything"
        self.NEWS_API_KEY = "2d749e0cac7a47fba9899263a93fe225"
        self.writer = Formatter()
    
    def get_news(self,company_name):
        print("Requesting for ",company_name)
        d = datetime.today() - timedelta(days=20)
        current_date = d.strftime('%Y-%m-%d')
        news_params = {
            "apiKey": self.NEWS_API_KEY,
            "qInTitle": company_name,
            "from": current_date,
            "sortBy": "publishedAt"
        }
        news_response = requests.get(self.NEWS_ENDPOINT, params=news_params)
        if news_response:
            articles = news_response.json()["articles"]
            top5 = articles[:5]
            self.writer.write_json(top5)
        

companies = []
companies.append("Reliance POWER  Ltd")
companies.append("TATA POWER Ltd")
companies.append("TATA MOTORS Ltd")
companies.append("HCL technologies Ltd")
companies.append("DELTA CORPoration Ltd")
companies.append("Suzlon Ltd")
companies.append("KPIT TECHnology Ltd")
companies.append("HDFC LIFE")
companies.append("ICICI PRUdential")
companies.append("Mahindra & Mahindra Ltd")
companies.append("RELIANCE Ltd")
companies.append("WIPRO Ltd")
companies.append("LT Ltd")
companies.append("INfosys Ltd")
companies.append("TCS Ltd")
companies.append("BOSCH LTD")
companies.append("EICHER MOTORS Ltd")
companies.append("SIEMENS Ltd")
companies.append("TATA STEEL Ltd")
companies.append("LTIM Ltd")
companies.append("HINDALCO Ltd")
companies.append("SBI LIFE Ltd")
companies.append("DELHIVERY")
companies.append("J&K BANK")
companies.append("INDUSIND Bank")
companies.append("KOTAK BANK")
companies.append("ICICI BANK")
companies.append("HDFC BANK")
companies.append("OLECTRA")
companies.sort()

newsreader = StockNewsReader()    

for c in companies:
    data = newsreader.get_news(c.lower())


