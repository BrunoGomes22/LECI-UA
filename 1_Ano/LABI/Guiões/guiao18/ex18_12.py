import sqlite3 as sql
import sys

def main(argv):
	db = sql.connect(argv[1])
	var = input("Introduza um nome: ")
	result = db.execute("SELECT * FROM contacts1 WHERE firstname LIKE ? OR middlename LIKE ? OR lastname LIKE ?", (var, var, var) )
	rows = result.fetchall()
	for row in rows:
		print(row)
	
	db.close()
	
	
main(sys.argv)
