def shorten(string):
    r = ""
    for c in string:
        if c.isupper():
            r += c

    return r

def main():
    str = input("Introduza uma string: ")
    print(shorten(str))


main()