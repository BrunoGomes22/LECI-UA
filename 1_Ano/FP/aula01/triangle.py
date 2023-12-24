import math

catetoA = int(input("Comprimento cateto A? "))
catetoB = int(input("Comprimento cateto B? "))

hipotenusa = math.pow(catetoA,2) + math.pow(catetoB,2)

angulo = math.degrees(math.acos((catetoA/hipotenusa)))

print(hipotenusa)
print(angulo)
