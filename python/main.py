import mysql.connector

mydb = mysql.connector.connect(
    host = 'localhost',
    user = 'root',
    password = 'qaz#123',
    database = 'mysql_tutorials'
)

mycursor = mydb.cursor()

mycursor.execute("select * from students")

myresult = mycursor.fetchall()

for x in myresult:
    print(x)


