#!/usr/bin/python3

import os
import sys
import socket
import json
import base64
from common_comm import send_dict, recv_dict, sendrecv_dict

from Crypto.Cipher import AES

# Função para encriptar valores a enviar em formato jsos com codificação base64
# return int data encrypted in a 16 bytes binary string coded in base64
def encrypt_intvalue (cipherkey, data):
	cipher = AES.new (cipherkey, AES.MODE_ECB)
	data = cipher.encrypt (bytes("%16d" % (data), 'utf8'))
	data_to_send = str (base64.b64encode (data), 'utf8')
	return data_to_send


# Função para desencriptar valores recebidos em formato json com codificação base64
# return int data decrypted from a 16 bytes binary strings coded in base64
def decrypt_intvalue (cipherkey, data):
	cipher = AES.new (cipherkey, AES.MODE_ECB)
	data = base64.b64encode (data)
	data = cipher.decrypt (data)
	return data

def create_cipherkey ():
	return os.urandom(16)

def enconde_cipherkey_tosend (cipherkey):
	return str(base64.b64encode (cipherkey), 'utf8')


# verify if response from server is valid or is an error message and act accordingly
def validate_response (client_sock, response):
	if response["status"] == True:
		return True
	else:
		return False

# Outcomming message structure:
# { op = "START", client_id, [cipher] }
# { op = "QUIT" }
# { op = "GUESS", number }
# { op = "STOP", number, attempts }
#
# Incomming message structure:
# { op = "START", status, max_attempts }
# { op = "QUIT" , status }
# { op = "GUESS", status, result }
# { op = "STOP", status, guess }


#
# Suporte da execução do cliente
#
def run_client (client_sock, client_id):
	cipherkey = create_cipherkey
	keyToSend = enconde_cipherkey_tosend(cipherkey)
	data = ""
	data_to_send = {}
	count = 0
	value = 0
	max_attempts = 0
	commands = ["START", "QUIT", "GUESS", "STOP"]
	
	while True:
		while data not in commands:
			data = input("Insira um comando válido: ")
		if(data == "START"):
			data_to_send = { "op" : data, "client_id": sys.argv[1], "cipher": keyToSend }
		elif(data == "QUIT"):
			data_to_send = { "op" : data }
		elif(data == "GUESS"):
			value = int(input("Insira um valor de 0 a 100"))
			count += 1
			# encripta o numero a ser enviado para o servidor
			value_to_send = encrypt_intvalue(cipherkey, value)
			data_to_send = { "op" : data, "number" : value_to_send } 
		elif(data == "STOP"):
			data_to_send = { "op" : data, "number" : value_to_send, "attempts": count }
		
		response = sendrecv_dict(client_sock, data_to_send)
		validate_response(client_sock, response)
		print(response)
		
		if validate_response == True:
			if (response["op"] == "START"):
				if(response["status"] == True):
					count = 0
					print(f"Operação START bem sucedida, tem {response['max_attempts']} tentativas.")
					max_attempts = response['max_attempts']
			elif (response["op"] == "QUIT"):
				if(response["status"] == True):
					print("Operação QUIT bem sucedida.")
					return False
			elif (response["op"] == "GUESS"):
				if(response["status"] == True):
					next_try = ""
					if(response["result"] == "smaller"):
						next_try = "mais pequeno"
					elif(response["result"] == "larger"):
						next_try = "maior que a"
					elif(response["result"] == "equals"):
						next_try = "igual á"
					print(f"Operação GUESS bem sucedida, o número secreto é {next_try} tentativa atual.")
			elif (response["op"] == "STOP"):
				if(response["status"] == True):
					# desencriptar o numero secreto : "guess"
					response["guess"] = decrypt_intvalue(cipherkey, response["guess"])
					if(response["guess"] == value and count < max_attempts):
						print(f"Sucesso, o número secreto era {response['guess']}.")
					else:
						print(f"Falhou, o número secreto era {response['guess']}.")
		else:
			print(f"Erro ao executar a operação {response['op']} : {response['error']}.")
	return None
	

def main():
	# validate the number of arguments and eventually print error message and exit with error
	# verify type of of arguments and eventually print error message and exit with error
	
	if len(sys.argv) != 3 and len(sys.argv) != 4:
		print("Insuficiência ou excesso de argumentos passados.")
		sys.exit(0)
		
	port = int(sys.argv[2])
	
	if len(sys.argv) == 4 :
		hostname = sys.argv[3]
		
	if len(sys.argv) == 3 :
		hostname = "127.0.0.1"
	
		
	client_sock = socket.socket (socket.AF_INET, socket.SOCK_STREAM)
	
	try:
		client_sock.connect ((hostname, port))
	except ConnectionRefusedError:
		print("Porta inserida inválida.")
		sys.exit(0)
	
	run_client (client_sock, sys.argv[1])
						
	client_sock.close ()
	sys.exit (0)

if __name__ == "__main__":
    main()
