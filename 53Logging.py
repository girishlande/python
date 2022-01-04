#program to demo loggig in Python
"""
DEBUG  (least important)
INFO
ERROR 
WARNING 
CRITICAL  (most important)
"""

import logging

def test():
    level = logging.getLevelName(logging.getLogger().getEffectiveLevel())
    print(f"LOG level:{level}")
    logging.debug("this is debug message")
    logging.info("this is info message")
    logging.warning("this is WARNING message")
    logging.error("this is ERROR message!")
    logging.critical("this is CRIRICAL message!")

test()

rootlogger = logging.getLogger()
print('level:'+logging.getLevelName(rootlogger.getEffectiveLevel()))

# Set the warning level to DEBUG . So we will see all types of logs
rootlogger.setLevel(logging.DEBUG)  

print("-"*40)
test()
