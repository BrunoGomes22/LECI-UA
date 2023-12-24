quantity = float(input("Introduza a quantidade de combustível: "))

preço = float(quantity * 1.40)

if quantity>40:
	desconto = preço * 0.10
	preço = preço - desconto
	
print("O preço a pagar é de %3.1f euros"%(preço))
