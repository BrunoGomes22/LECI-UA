# Complete the code to make the HiLo game...

import random

def main():
    # Pick a random number between 1 and 100, inclusive
    secret = random.randrange(1, 101);
    print("Can you guess my secret?")
    # put your code here
    count = 1
    numero = int(input("Introduza um número no intervalo de [1,100]: "))
    while numero != secret:
        count += 1
        if(numero > secret):
            numero = int(input("Número alto, tente outra vez! "))
        
        else:
            numero = int(input("Número baixo, tente outra vez! "))

    print("Parabéns! O número secreto era {}, e foram feitas {} tentativas.".format(secret,count))
main()
