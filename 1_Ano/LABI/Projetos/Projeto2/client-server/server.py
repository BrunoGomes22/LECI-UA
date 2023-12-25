#!/usr/bin/python3

import sys
import socket
import select
import json
import base64
import csv
import random
from common_comm import send_dict, recv_dict, sendrecv_dict

from Crypto.Cipher import AES

# Dicionário com a informação relativa aos clientes
gamers = {}

# return the client_id of a socket or None
def find_client_id (client_sock):
	for id in gamers:
		if gamers[id]["socket"]==client_sock:
			return id
	return None


# Função para encriptar valores a enviar em formato json com codificação base64
# return int data encrypted in a 16 bytes binary string and coded base64
def encrypt_intvalue (client_id, data):
	cipherkey = gamers[client_id]["cipher"]
	cipher = AES.new (cipherkey, AES.MODE_ECB)
	data = cipher.encrypt (bytes("%16d" % (data), 'utf8'))
	data_tosend = str (base64.b64encode (data), 'utf8')
	return data_tosend


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary string and coded base64
def decrypt_intvalue (client_id, data):
	cipherkey = gamers[client_id]["cipher"]
	cipher = AES.new (cipherkey, AES.MODE_ECB)
	data = base64.b64encode (data)
	data = cipher.decrypt (data)
	return data


#
# Incomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "GUESS", number }
# { op = "STOP", number, attempts }
#
# Outcomming message structure:
# { op = "START", status, max_attempts }
# { op = "QUIT" , status }
# { op = "GUESS", status, result }
# { op = "STOP", status, guess }


#
# Suporte de descodificação da operação pretendida pelo cliente
#
def new_msg (client_sock):
	# read the client request
	response = recv_dict(client_sock)
	
	# detect the operation requested by the client
	op = response["op"] 
	
	# execute the operation and obtain the response (consider also operations not available)
	if op == "START":
		dict_data = new_client(client_sock, response)
	elif op == "QUIT":
		dict_data = quit_client(client_sock, response)
	elif op == "GUESS":
		response["number"] = decrypt_intvalue(response["client_id"], response["number"])
		dict_data = guess_client(client_sock, response)
	elif op == "STOP":
		response["number"] = decrypt_intvalue(response["client_id"], response["number"])
		dict_data = stop_client(client_sock, response)
	else:
		dict_data = {"error": "Operação não existe"}

	# send the response to the client
	response = send_dict(client_sock, dict_data)
	return response

#
# Suporte da criação de um novo jogador - operação START
#
def new_client (client_sock, request):
	# detect the client in the request
	client = request["client_id"]
	
	# verify the appropriate conditions for executing this operation
	if client in gamers:
		return {"op":"START","status":False,"error":"Cliente existente"}
	
	# obtain the secret number and number of attempts
	max_attempts = random.randint(10,30)
	numSecreto = random.randint(0,100)
	
	# cipherkey form str to base64
	cipher = base64.b64encode (request["cipher"])

	# process the client in the dictionary
	gamers[client] = {"socket":client_sock,"cipher":cipher,"guess":numSecreto,"max_attempts":max_attempts,"attempts":0}
	
	# return response message with results or error message
	return {"op":"START","status":True,"max_attempts":max_attempts}


#
# Suporte da eliminação de um cliente
#
def clean_client (client_sock):
	# obtain the client_id from his socket and delete from the dictionary
	client = find_client_id (client_sock)
	gamers.pop(client)
	
	return None


#
# Suporte do pedido de desistência de um cliente - operação QUIT
#
def quit_client (client_sock, request):
	# obtain the client_id from his socket
	client = find_client_id (client_sock)
	
	# verify the appropriate conditions for executing this operation
	if client not in gamers:
		return {"op":"QUIT","status":False,"error":"Cliente inexistente"}

	# process the report file with the QUIT result
	fout = open("report.csv", "w")
	writer = csv.DictWriter(fout, fieldnames=["Id", "Secret number", "Max attempts", "Attempts", "Result"])
	
	writer.writerow({"Id": client, "Result" : "QUIT"} )
	fout.close()

	# eliminate client from dictionary
	gamers.pop(client)
	
	# return response message with result or error message
	return {"op":"QUIT","status":True}


#
# Suporte da criação de um ficheiro csv com o respectivo cabeçalho
#
def create_file ():
	fout = open("report.csv", "w")
	writer = csv.DictWriter(fout, fieldnames=["Id", "Secret number", "Max attempts", "Attempts", "Result"])
	writer.writeheader()
	fout.close()
	return None
# create report csv file with header


#
# Suporte da actualização de um ficheiro csv com a informação do cliente e resultado
#
def update_file (client_id, result):
	# update report csv file with the result from the client
	fout = open("report.csv", "w")
	writer = csv.DictWriter(fout, fieldnames=["Id", "Secret number", "Max attempts", "Attempts", "Result"])
	writer.writerow({"Id": client_id, "Secret number": gamers[client_id]["guess"], "Max attempts": gamers[client_id]["max_attempts"], "Attempts":gamers[client_id]["attempts"], "Result" : result} )
	fout.close()
	return None



#
# Suporte da jogada de um cliente - operação GUESS
#
def guess_client (client_sock, request):
	# obtain the client_id from his socket
	client = find_client_id (client_sock)
	
	# verify the appropriate conditions for executing this operation
	if client not in gamers:
		return {"op":"QUIT","status":False,"error":"Cliente inexistente"}
	
	# 
	guess = request["number"]
	numSecreto = gamers[client]["guess"]
	if (guess < numSecreto):
		result = "larger"
	elif (guess > numSecreto):
		result = "smaller"
	elif (guess == numSecreto):
		result = "equals"
	# atualizar attempts no dicionario gamers
	gamers[client]["attempts"] +=1

	# return response message with result or error message
	return {"op": "GUESS", "status": True, "result": result}


#
# Suporte do pedido de terminação de um cliente - operação STOP
#
def stop_client (client_sock, request):
	# obtain the client_id from his socket
	client = find_client_id (client_sock)
	
	# verify the appropriate conditions for executing this operation
	if client not in gamers:
		return {"op":"QUIT","status":False,"error":"Cliente inexistente"}
    
	if (request["attempts"] != gamers[client]["attemps"]):
		return {"op":"QUIT","status":False,"error":"Número de jogadas inconsistente"}
	
	# process the report file with the SUCCESS/FAILURE result
	fout = open("report.csv", "w")
	writer = csv.DictWriter(fout, fieldnames=["Id", "Secret number", "Max attempts", "Attempts", "Result"])
	
	if (request["attempts"]<=gamers[client]["max_attempts"]) and (request["number"]==gamers[client]["guess"]):
		writer.writerow({"Id": client, "Result" : "Success"} )
	else:
		writer.writerow({"Id": client, "Result" : "Failure"} )
	
	fout.close()

	# eliminate client from dictionary
	gamers.pop(client)

	# encripta o numero secreto : "guess"
	guess_encrypt = encrypt_intvalue(client, gamers[client]["guess"])
	# return response message with result or error message
	return {"op": "STOP", "status": True, "guess": guess_encrypt}


def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error

	if len(sys.argv) != 2 or int(sys.argv[1]) < 1024:
		print("Insuficiência ou excesso de argumentos passados.")
		sys.exit(0)
	
	port = int(sys.argv[1])
	
	server_socket = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	server_socket.bind (("127.0.0.1", port))
	server_socket.listen (10)

	clients = []
	create_file ()

	while True:
		try:
			available = select.select ([server_socket] + clients, [], [])[0]
		except ValueError:
			# Sockets may have been closed, check for that
			for client_sock in clients:
				if client_sock.fileno () == -1: client_sock.remove (client) # closed
			continue # Reiterate select

		for client_sock in available:
			# New client?
			if client_sock is server_socket:
				newclient, addr = server_socket.accept ()
				clients.append (newclient)
			# Or an existing client
			else:
				# See if client sent a message
				if len (client_sock.recv (1, socket.MSG_PEEK)) != 0:
					# client socket has a message
					##print ("server" + str (client_sock))
					new_msg (client_sock)
				else: # Or just disconnected
					clients.remove (client_sock)
					clean_client (client_sock)
					client_sock.close ()
					break # Reiterate select

if __name__ == "__main__":
	main()
