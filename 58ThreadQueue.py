#program to demonstrate queue operaiton in Threading
import logging
import threading
from threading import Thread, Timer
import time
import random
from queue import Queue
from concurrent.futures import ThreadPoolExecutor

def test_que(name,que):
    threadname = threading.current_thread().name
    logging.info(f'Starting {threadname}')
    time.sleep(random.randrange(1,5))
    logging.info(f'Finished:{threadname}')
    ret = 'Hello ' + name + ' your random number is :' + str(random.randrange(1,10))
    que.put(ret)
    
def queued():
    que = Queue()
    t = Thread(target = test_que, args=['Girish',que])
    t.start()
    logging.info('Do something on the main thread')
    t.join()
    ret = que.get()
    logging.info(f'Returned:{ret}')

def test_future(name):
    threadname = threading.current_thread().name
    logging.info(f'Starting : {threadname}')
    time.sleep(random.randrange(1,5))
    logging.info(f'finished: {threadname}')
    ret = 'Hello ' + name + ' your random number is : ' + str(random.randrange(10))
    return ret

def pooled():
    workers = 20
    ret = []
    with ThreadPoolExecutor(max_workers=workers) as ex:
        for x in range(workers):
            v = random.randrange(1,5)
            future = ex.submit(test_future,'Girish' + str(x))
            ret.append(future)
    logging.info("Do something on main thread:")
    for r in ret:
        logging.info(f'Returned: { r.result() }')
        
def main():
    logging.basicConfig(format='%(levelname)s - %(asctime)s: %(message)s ' , datefmt='%H:%M:%S', level = logging.DEBUG)
    logging.info('App start')
    
    #queued()
    
    pooled()
    
    logging.info('Main thread finished')
    
    
if __name__ == "__main__":
    main()

    