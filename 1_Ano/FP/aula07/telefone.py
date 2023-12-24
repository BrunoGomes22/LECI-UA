# Complete este programa como pedido no guião da aula.

def listContacts(dic):
    """Print the contents of the dictionary as a table, one item per row."""
    print("{:>12s} : {}".format("Numero", "Nome"))
    for num in dic:
        print("{:>12s} : {}".format(num, dic[num]))

def filterPartName(contacts, partName):
    """Returns a new dict with the contacts whose names contain partName."""
    filteredNames = dict()
    for key,val in contacts.items():
        if partName in val:
            filteredNames[key] = val

    return filteredNames



def addContact(num, nome, dic):
    dic[num] = nome

def removeContact(num, dic):
    if num not in dic:
        print("Contacto não existente!")
    else:
        dic.pop(num)

def searchNum(num, dic):
    if num not in dic:
        return num
    else:
        return dic[num]

def menu():
    """Shows the menu and gets user option."""
    print()
    print("(L)istar contactos")
    print("(A)dicionar contacto")
    print("(R)emover contacto")
    print("Procurar (N)úmero")
    print("Procurar (P)arte do nome")
    print("(T)erminar")
    op = input("opção? ").upper()   # converts to uppercase...
    return op


def main():
    """This is the main function containing the main loop."""

    # The list of contacts (it's actually a dictionary!):
    contactos = {"234370200": "Universidade de Aveiro",
        "727392822": "Cristiano Aveiro",
        "387719992": "Maria Matos",
        "887555987": "Marta Maia",
        "876111333": "Carlos Martins",
        "433162999": "Ana Bacalhau"
        }

    op = ""
    while op != "T":
        op = menu()
        if op == "T":
            print("Fim")
        elif op == "L":
            print("Contactos:")
            listContacts(contactos)
        elif op == "A":
            numero = input("Introduza o número: ")
            nomePessoa = input("Introduza o nome: ")
            addContact(numero, nomePessoa, contactos)
        elif op == "R":
            remove = input("Introduza o contacto que queira remover: ")
            removeContact(remove, contactos)
        elif op == "N":
            procuraNumero = input("Qual o número que pretende procurar? ")
            print(searchNum(procuraNumero, contactos))
        elif op == "P":
            nomeParcial = input("Introduza parte de um nome: ")
            print(filterPartName(contactos, nomeParcial))
        else:
            print("Não implementado!")
    

# O programa começa aqui
main()

