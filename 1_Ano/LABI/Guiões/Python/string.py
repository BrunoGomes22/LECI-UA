a = str(input("Introduza uma string: "))
counter = 0

x = a.split()

for i in x:
	counter +=1
	
print("Número de palavras: %d" %(counter))


txt = str(input("Introduza uma string: ")) [::-1]

print(txt)


num = int(input("Introduza um número: "))
factorial = 1
while (num > 0):
	factorial = factorial * num
	num = num-1
	
print(factorial)
