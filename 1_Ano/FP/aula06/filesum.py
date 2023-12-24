from tkinter import filedialog

def main():
    # 1) Pedir nome do ficheiro (experimente cada alternativa):
    name = input("File? ")                                  #A
    #name = filedialog.askopenfilename(title="nums.txt") #B
    # 2) Calcular soma dos números no ficheiro:
    total = fileSum(name)
    
    # 3) Mostrar a soma:
    print("Sum:", total)


def fileSum(filename):
    # Complete a função para ler números do ficheiro e devolver a sua soma.
    sum = 0
    fileObj = open(filename, 'r')
    for line in fileObj:
        line = float(line)
        sum += line

    return sum
    fileObj.close()



if __name__ == "__main__":
    main()

