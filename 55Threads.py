#program to demo use of threads

import time
from threading import Thread
import random

def longTask(msg):
    print(msg + " task started")

    for i in range(3,6):
        time.sleep(random.randrange(3))
        print(msg + " completed:",i)
        
    print(msg + " Task finished")
    
threads = []
for i in range(3):
    t = Thread(target=longTask,args=['thread'+str(i)])
    threads.append(t)
    t.start()
    
print("Main finished")