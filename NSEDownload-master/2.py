from NSEDownload import stocks
#import pandas as pd
#import matplotlib.pyplot as plt
#import numpy as np


# Gets data without adjustment for events
df = stocks.get_data(stock_symbol="RPOWER", start_date='13-7-2023', end_date='14-7-2023')
print(df["Close Price"].tail(10))
#| Date                     | Symbol | Series | High Price | Low Price | Open Price | Close Price | Last Price | Prev Close Price | Total Traded Quantity | Total Traded Value | 52 Week High Price | 52 Week Low Price |


