x1 = float(input("number? "))
x2 = float(input("number? "))
x3 = float(input("number? "))
"""
if x1>x2:
	if x1>x3:
		print("%d is maximum"%(x1))
	else:
		print("%d is maximum"%(x3))
else:
	if x2>x3:
		print("%d is maximum"%(x2))
	else:
		print("%d is maximum"%(x3)) 
"""

max = x1

if x2>max:
	max = x2
	
if x3>max:
	max = x3
	
print(max)
