import sqlite3 as sql
import sys

def main(argv):
	db = sql.connect(argv[1])
	
	result = db.execute("SELECT firstname FROM contacts1")
	rows = result.fetchall()
	for row in rows:
		print(row[0])
		
	print(str(len(rows)) + " contactos")
	db.close()
	
	
main(sys.argv)
