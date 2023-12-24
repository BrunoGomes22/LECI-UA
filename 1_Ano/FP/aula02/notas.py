atp1 = float(input("Nota ATP1? "))
atp2 = float(input("Nota ATP2? "))
apa = float(input("Nota APA? "))
apf = float(input("Nota APF? "))

ctp = float((atp1 + atp2)/2)
cp = float((1/4*apa + 3/4*apf))
nf = int((36/100*ctp) + (64/100*cp)+0.5)

if ctp < 6.5 or cp < 6.5:
	print("66")
elif nf < 9.5:
	print("Chumbou, tem de ir a recurso.")
	atpr = float(input("Nota ATPR? "))
	apr = float(input("Nota APR? "))
	
	if atpr > ctp:
		atfinal = atpr
	elif atpr == ctp:
		atfinal = atpr
	else:
		atfinal = ctp
		
	if apr > cp:
		apfinal = apr
	elif apr == cp:
		apfinal = ap
	else:
		apfinal = cp
	
	notarecurso = int((36/100)*atfinal + (64/100)*apfinal+0.5)
	if notarecurso >= 9.5:
		print("A sua nota foi: %3.1f"% (notarecurso))
		print("Passou!")
	else:
		print("A sua nota foi: %3.1f"% (notarecurso))
		print("Chumbou!")
		
else:
	print("A sua nota foi: %3.1f"% (nf))
	print("Passou!")


		
	
	
