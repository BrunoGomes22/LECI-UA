
def main():
    count = 0
    soma = 0
    num = "n"

    while len(num) != 0:
        num = (input("Valor? "))
        if num == "":
            break
        else:
            num = float(num)
            soma += num
            count += 1

        num = str(num)
    
    average = float(soma/count)
    print("A média é {}".format(average))

main()