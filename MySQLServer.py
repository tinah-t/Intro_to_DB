import mysql.connector
from mysql.connector import Error
try:
    mydb = mysql.connector.connect(
            host="localhost",
            user="root",
            password="XMfRO045r",
            database="mydb"
        )
    mycursor = mydb.cursor()
    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    mydb.commit()
    if mydb.is_connected():
        print("Database 'alx_book_store' created successfully!")

except Error:
    print("Error connecting to the database")
finally:
    mycursor.close()
    mydb.close()
