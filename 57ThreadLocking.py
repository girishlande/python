#Thread locking
#Avoiding the dreaded race conditions and deadlocks
#Race condition: same resource modified by multiple threads
#deadlocks: multiple threads waiting on same resource

import logging
import threading
from threading import Thread, Timer
import time

def test():
    threadname = threading.current_thread().name
    logging.info(f'starting:{threadname}')
    for x in range(60):
        logging.info(f'working: {threadname}')
        time.sleep(1)
    logging.info(f'finished:{threadname}')
    
def stop():
    logging.info('Exiting the application')
    exit(0)
   
def main():
    logging.basicConfig(format='%(levelname)s - %(asctime)s: %(message)s ' , datefmt='%H:%M:%S', level = logging.DEBUG)
    logging.info('App start')
    
    timer  = Timer(3,stop)
    timer.start()
    
    # If you make thread as daemon then it will stop when main functions is terminated
    t= Thread(target=test,daemon=True)
    t.start()
    
    logging.info('Main thread finished')
    
    
if __name__ == "__main__":
    main()
