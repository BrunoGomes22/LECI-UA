def palindrome(palavra):

    if palavra == palavra[::-1]:
        return "A palavra é um palíndromo!"
    else:
        return "A palavra não é um palíndromo!"

def main():
    word = input("Introduza uma palavra para verificar se é um palíndromo: ")
    print(palindrome(word))

main()