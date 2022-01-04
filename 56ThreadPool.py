#program to show use of threadpool
import logging
import threading
from concurrent.futures import ThreadPoolExecutor
import time
import random

def test(item):
    s = random.randrange(1,10)
    logging.info(f'Task {item}: id = {threading.get_ident()}')
    logging.info(f'Task {item}: name = {threading.current_thread().name}')
    logging.info(f'Task {item}: sleeping for {s}')
    time.sleep(s)
    
    logging.info(f'Task {item}: finished')
    
def main():
    logging.basicConfig(format='%(levelname)s - %(asctime)s: %(message)s ' , datefmt='%H:%M:%S', level = logging.DEBUG)
    logging.info('App start')
    
    workers = 2
    items = 15
    
    with ThreadPoolExecutor (max_workers = workers) as executor:
        executor.map(test,range(items))
        
    logging.info('App finished')
    
    
if __name__ == "__main__":
    main()
    
    