def factorial(n):
    assert isinstance(n, int), "n should be an int"
    assert n >= 0            , "n should not be negative"

    fact = 1
    while n>0:
        fact = fact * n
        n -= 1

    return fact

def main():
    numero = int(input("Introduza um número: "))
    print(factorial(numero))

main()