import mysql.connector

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="sang1234.",
    database="cloud_storage_system"
)

print("Database Connected")