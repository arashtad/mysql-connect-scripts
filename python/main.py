import mysql.connector

mydb = mysql.connector.connect(
    host = 'YOUR_HOST_NAME',
    user = 'YOUR_USERNAME',
    password = 'YOUR_PASSWORD',
    database = 'YOUR_DATABASE_NAME'
)

mycursor = mydb.cursor()

mycursor.execute("select * from students")

myresult = mycursor.fetchall()

for x in myresult:
    print(x)


