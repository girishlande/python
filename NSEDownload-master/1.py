from NSEDownload import stocks
import pandas as pd
#import matplotlib.pyplot as plt
import numpy as np


# Gets data without adjustment for events
df = stocks.get_data(stock_symbol="RPOWER", start_date='13-7-2023', end_date='14-7-2023')
print(df["Close Price"].tail(10))
#plt.plot(df["Last Price"])
#plt.show()

# data = {'tasks': [300, 500, 700]}
# df = pd.DataFrame(data, index=['tasks_pending', 'tasks_ongoing', 'tasks_completed'])
# df.plot.pie(y='tasks', figsize=(5, 5), autopct='%1.1f%%', startangle=90)
# plt.show()

