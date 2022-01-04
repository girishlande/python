#program to demonstrate Timers
import time
from threading import Timer

def display(msg):
    print(msg + ' ' + time.strftime('%H:%M:%S'))
    
def run_once():
    display('Run once')
    t = Timer(5,display,['Timeout'])
    t.start()
    
#run_once()
#print('waiting...')

class Timer1(Timer):
    def run(self):
        while not self.finished.wait(self.interval):
            self.function(*self.args,**self.kwargs)
        print('Done')
        
#Making a thread and controlling it         
timer = Timer1(1,display,['Repeating'])
timer.start()
print('threading started')
time.sleep(10) #suspend the execution for given number of seconds  
print('threading finished')
timer.cancel()