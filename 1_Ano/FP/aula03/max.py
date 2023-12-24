def max2(numero1, numero2):
    if numero1>numero2:
        return numero1
    else:
        return numero2

def max3(numero1, numero2, numero3):
   return max2(max2(numero1, numero2), numero3)


def main():
    num1 = float(input("Introduza um número: "))
    num2 = float(input("Introduza outro número: "))
    num3 = float(input("Introduza o terceiro número: "))

    #print(max2(num1, num2))
    print(max3(num1, num2, num3))

main()