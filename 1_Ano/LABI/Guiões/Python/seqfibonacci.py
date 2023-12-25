nterms = int(input("Introduza o número de elementos da sequência: "))

n0 = 0
n1 = 1
counter = 0

if (nterms <= 0):
	print("Introduza um número válido: ")
	
elif (nterms == 1):
	print(n0)

else:
	print("Sequência de Fibonacci: ")
	while(nterms > counter):
		print(n0)
		nextterm = n0 + n1
		n0 = n1
		n1 = nextterm
		counter += 1
		
