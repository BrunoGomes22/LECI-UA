import math

def leibnizPi4(n):
    exp = 0
    while n>0:
        n -= 1
        exp += ((math.pow(-1,n))/(2*n+1))
        

    return exp*4

def main():
    num = float(input("Introduza um número: "))
    print(leibnizPi4(num))

main()