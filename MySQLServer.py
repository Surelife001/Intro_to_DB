# connecting mysql database
import mysql.connector

DB_Name = "alx_book_store"

try:
    mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "Chinecherem2001.com",
    database = DB_Name
    
)
 
    mycursor = mydb.cursor()
    mycursor.execute(f"CREATE DATABASE IF NOT EXISTS {DB_Name}")

    mycursor.execute("SHOW DATABASES")
    databases = mycursor.fetchall()

    db_exists = False
    for db in databases:
        if db[0] == DB_Name:
            db_exists = True
            break

    if db_exists:
        print(f"Database {DB_Name} created successfully!")
    else:
        print(f"Database {DB_Name} does not exists!")

except:
    print("Error while connecting to MySQL")

finally:
    if mydb.is_connected():
        mycursor.close()
        mydb.close()




