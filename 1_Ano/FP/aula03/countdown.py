def countdown(n):
    while n>=0:
        print(n)
        n = n-1
        
    return 

def main():
    numero = int(input("Número? "))
    countdown(numero)


main()