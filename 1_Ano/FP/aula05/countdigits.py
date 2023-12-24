def digits(str):
    count = 0
    for i in str:
        if i.isdigit():
            count += 1
        else:
            continue

    return count



def main():
    string = input("Introduza uma string: ")
    print("A string tem {} dígitos".format(digits(string)))

main()