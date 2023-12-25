import socket
import signal
import sys
import os
import psutil
import shutil


def signal_handler(sig, frame):
    print('\nDone!')
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)
print("Press Ctrl+C to exit the program.")

ip_addr = "127.0.0.1"
udp_port = 49153

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

while True:


    cpu_utilization = str(psutil.cpu_percent(2)) #dados de utilizacao de cpu num intervalo de 2 segundos (media de utilizacao de todos os nucleos do processador)

    ram_memory = str(psutil.virtual_memory()[2]) #a funcao psutil.virtual_memory() retorna um tuplo com 5 campos, sendo o terceiro a percentagem de memoria utilizada

    total, used, free = shutil.disk_usage("/") #utilização do disco


    message = ("\n-------------------------------------\nUtilização do CPU é de {}%\nUtilização da memória RAM é de {}%\nEspaço total do disco é de {} GiB\nEspaco utilizado do disco é de {} GiB\nEspaço livre do disco é de {} GiB\n-------------------------------------".format(cpu_utilization,ram_memory,(total // 2**30),(used // 2**30),(free // 2**30))).encode()
    

    sock.sendto(message, (ip_addr, udp_port))
    
