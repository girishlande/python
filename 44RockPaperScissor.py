#Rock paper scissor game
#Rock breaks scissor
#Scissor beats paper
#paper beats Rock

import random
import time

def getStr(v):
  if v == 0:
    return "ROCK"
  elif v == 1:
    return "PAPER"
  else: 
    return "SCISSOR"

def checkWinner(v1,v2):
    if (v1 == 0 and v2 == 2) or (v1 == 1 and v2 == 0) or (v1 == 2 and v2 == 1):
        return "PLAYER1"
    if (v2 == 0 and v1 == 2) or (v2 == 1 and v1 == 0) or (v2 == 2 and v1 == 1):
        return "PLAYER2"
    return "NO ONE"
        
n = 10
while n > 0:
    v1 = int(int(random.random() * 100) % 3)
    v2 = int(int(random.random() * 100) % 3)
    
    time.sleep(1)
    print(f"Player1:{getStr(v1)} Player2:{getStr(v2)}   =>  {checkWinner(v1,v2)} wins")
    
    n -= 1
    
 