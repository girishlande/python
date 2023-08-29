import requests
import json 
from datetime import datetime,timedelta
import os
import sys

   
class StockNewsReader:
    def __init__(self) -> None:
        self.NEWS_ENDPOINT = "https://newsapi.org/v2/everything"
        self.NEWS_API_KEY = "2d749e0cac7a47fba9899263a93fe225"
        pass
    
    def get_news(self,company_name):
        d = datetime.today() - timedelta(days=2)
        current_date = d.strftime('%Y-%m-%d')
        news_params = {
            "apiKey": self.NEWS_API_KEY,
            "qInTitle": company_name,
            "from":current_date,
            "sortBy":"publishedAt"
        }
        news_response = requests.get(self.NEWS_ENDPOINT, params=news_params)
        articles = news_response.json()["articles"]
        top5 = articles[:5]
        print(json.dumps(top5,indent=2))
        return top5
        

x = StockNewsReader()
x.get_news("tata motors")
