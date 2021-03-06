#write a tick tack toe game

def displayBoard(b):
    print()
    print(b[6] + '|' + b[7] + '|' + b[8])
    print('------')
    print(b[3] + '|' + b[4] + '|' + b[5])
    print('------')
    print(b[0] + '|' + b[1] + '|' + b[2])
    print()
    
def takeUser1InputSymbol():
    symbol1 = input("Enter symbol 'X' or 'O' : ")
    symbol1 = symbol1.upper()
    while not (symbol1 == 'X' or symbol1 == 'O'):
        symbol1 = input("Enter symbol 'X' or 'Y'")
    return symbol1    

def calculateUser2InputSymbol(symbol1):
    symbol2 = 'X'
    if symbol1 == 'X':
        symbol2 = 'O'
    return symbol2
    
def isPositionEmpty(pos,board):
    if board[pos] == 'X' or board[pos] == 'O' : 
        return False
    return True
    

def takeUserInput(board,usersymbol):
    i1 = int(input('Enter position(1-9) :'))
    while i1 < 1 or i1 > 9:
        i1 = int(input('Enter position(1-9): '))
        
    if isPositionEmpty(i1,board):
        board[i1-1] = usersymbol
    else:
        takeUserInput(board,usersymbol)
    
def checkWinner(board,symbol):
    #check rows 
    if board[0] == board[1] and board[1] == board[2] and board[0]==symbol:
        return True
    if board[3] == board[4] and board[4] == board[5] and board[3]==symbol:
        return True
    if board[6] == board[7] and board[6] == board[8] and board[6]==symbol:
        return True
    #check columns
    if board[0] == board[3] and board[3] == board[6] and board[0]==symbol:
        return True
    if board[1] == board[4] and board[4] == board[7] and board[1]==symbol:
        return True
    if board[2] == board[5] and board[2] == board[8] and board[2]==symbol:
        return True    
    #check diagonal
    if board[2] == board[4] and board[2] == board[6] and board[2]==symbol:
        return True
    if board[0] == board[4] and board[0] == board[8] and board[0]==symbol:
        return True
    
    return False
        
board = [' ',' ',' ',' ',' ',' ',' ',' ',' '];

#displayBoard(board)
user1symbol = takeUser1InputSymbol()
user2symbol = calculateUser2InputSymbol(user1symbol)
print("User1: " + user1symbol + " User2:" + user2symbol)

while True:
    takeUserInput(board,user1symbol)
    displayBoard(board)
    if checkWinner(board,user1symbol) == True:
        print("User1 WINS")
        break
    
    takeUserInput(board,user2symbol)
    displayBoard(board)
    if checkWinner(board,user2symbol) == True:
        print("User2 WINS")
        break
    
print("GAME FINISHED!")