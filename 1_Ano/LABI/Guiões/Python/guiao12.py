import sys


a="Peter Sagan"
b=" is "
c=" the "
d=" best"
print(len(a))
print(a+b+c+d)
print(a[0:5])
print(2*4)

l = ["Wout Van Aert", "Peter Sagan", "João Almeida", "Mathieu Van der Poel"]
print(l)
print(l[2])
print(l[0:3])
l.append("Andre Greipel")

l1 = ["Nelson Oliveira", "Rui Oliveira", "Rui Costa", "Alberto Contador"]

l.extend(l1)
print(l)


fevereiro = int(input("Introduza o nº de dias do mês de Fevereiro: "))

if fevereiro == 28:
	print("O ano não é bissexto")	
if fevereiro == 29:
	print("O ano é bissexto")


string1 = ""
if not string1:
	print("string vazio")
else:
	print("string1")
