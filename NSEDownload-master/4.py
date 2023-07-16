from NSEDownload import stocks
from datetime import datetime,timedelta
import math
#| Date   | Symbol | Series | High Price | Low Price | Open Price | Close Price | Last Price | Prev Close Price | Total Traded Quantity | Total Traded Value | 52 Week High Price | 52 Week Low Price |

def printAverage(stockname,startdate,enddate,days):
    days = 10
    df = stocks.get_data(stock_symbol=stockname, start_date=startdate, end_date=enddate)
    r = df["Close Price"].tail(days)
    sum = 0.0
    flowstr=""
    for i in range(0,days):
      sum += r[i]

      p = 0
      if i!=0:
        d1 = r[i-1]
        d2 = r[i]
        diff = d2 - d1
        p = diff / d1 * 100
      print(stockname,":",i,":","{:.2f}".format(r[i])," P:{:.2f}".format(p))

    curr = r[days-1]
    avg = sum/(days)
    diff = curr - avg
    per = diff / avg * 100
    nshare = math.floor(10000/curr)

    h = df["52 Week High Price"].tail(1)
    print("AVG:{:.2f}".format(avg)," P:{:.2f}".format(per)," #share:",nshare,"AllTimehigh :",h[0])
    print()
    
       

ndays = 5

enddate = datetime.today().strftime('%d-%m-%Y')
tod = datetime.now()
d = timedelta(days = ndays)
a = tod - d
startdate = a.strftime('%d-%m-%Y')

ml = []
ml.append("RPOWER")
ml.append("TATAPOWER")
ml.append("TATAMOTORS")
ml.append("HCLTECH")
ml.append("DELTACORP")
ml.append("SUZLON")
ml.append("KPITTECH")
ml.append("HDFCLIFE")
ml.append("ICICIPRULI")
ml.append("M&M")
ml.append("RELIANCE")
ml.append("WIPRO")
ml.append("LT")
ml.append("INFY")
ml.append("TCS")
ml.append("BOSCHLTD")
ml.append("EICHERMOT")
ml.append("SIEMENS")
ml.append("TATASTEEL")
ml.append("LTIM")
ml.append("HINDALCO")
ml.append("SBILIFE")

for i in ml:
  printAverage(i,startdate,enddate,ndays)


