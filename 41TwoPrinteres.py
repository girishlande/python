#Two printers. We have 2 printers with different speed.
#and number of pages to print. 
#First printer takes X seconds to print 1 page
#Second printer takes Y seconds to print 1 page

s = input("input data:")
a = s.split()
x = int(a[0])
y = int(a[1])
n = int(a[2])

xcount = x
ycount = y
count = 0
while n>0:
  count+=1
  xcount-=1
  ycount-=1
  if xcount == 0:
    n = n - 1
    xcount = x
  if ycount == 0:
    n = n - 1
    ycount = y

print(count)    