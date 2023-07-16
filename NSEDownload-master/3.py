from NSEDownload import stocks
from datetime import datetime,timedelta
#| Date   | Symbol | Series | High Price | Low Price | Open Price | Close Price | Last Price | Prev Close Price | Total Traded Quantity | Total Traded Value | 52 Week High Price | 52 Week Low Price |

enddate = datetime.today().strftime('%d-%m-%Y')
tod = datetime.now()
d = timedelta(days = 5)
a = tod - d
startdate = a.strftime('%d-%m-%Y')

days = 10
df = stocks.get_data(stock_symbol="RPOWER", start_date=startdate, end_date=enddate)
r = df["Close Price"].tail(days)
sum = 0.0
flowstr=""
for i in range(1,days):
  print(i,":",r[-i])
  d = str(r[-i])
  sum += r[-i]

print("average:",sum/(days-1))

