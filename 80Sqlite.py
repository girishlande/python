import sqlite3
from sqlite3 import Error


def create_connection(db_file):
    """ create a database connection to a SQLite database """
    conn = None
    try:
        conn = sqlite3.connect(db_file)
        print(sqlite3.version)
    except Error as e:
        print(e)
    finally:
        return conn        

def createTable(conn,tablename):
    c = conn.cursor()
    args = []
    sql = "CREATE TABLE if not exists {t} (name text, value real)".format(t=tablename)
    c.execute(sql, args)
                
    #sql = "SELECT * FROM {t} WHERE {c}".format(t=tablename)
    #args = []
    #c.execute(sql, args)

        
def readTable(conn,tablename):
    print("reading table",tablename)
    c = conn.cursor()
    sql = "SELECT * FROM {t}".format(t=tablename)
    args = []
    c.execute(sql, args)
    for i in c.fetchall():
        print(i)

def insertIntoTable(conn,tablename,name,value):
    c = conn.cursor()                
    sql = "INSERT INTO {t}(name,value) VALUES (?,?)".format(t=tablename)
    data_tuple = (name, value)
    c.execute(sql, data_tuple)
    conn.commit()
    
if __name__ == '__main__':
    conn = create_connection(r"D:\test.db")
    tablename="girish"
    createTable(conn,tablename)
    # insertIntoTable(conn,tablename,"Girish",11)
    # insertIntoTable(conn,tablename,"Ajit",12)
    # insertIntoTable(conn,tablename,"Suhas",13)
    # insertIntoTable(conn,tablename,"Ramesh",13)
    # insertIntoTable(conn,tablename,"kiran",13)
    readTable(conn,tablename)
    
    conn.close()