from datetime import datetime,timedelta

startdate = datetime.today().strftime('%d-%m-%Y')
tod = datetime.now()
d = timedelta(days = 5)
a = tod - d
enddate = a.strftime('%d-%m-%Y')

print(startdate)
print(enddate)
