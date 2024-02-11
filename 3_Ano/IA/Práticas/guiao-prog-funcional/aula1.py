#Exercicio 1.1
def comprimento(lista):
    if lista == []:
        return 0

    return 1 + comprimento(lista[1:])

#Exercicio 1.2
def soma(lista):
    if len(lista) == 0:
        return 0
    else:
        return lista[0] + soma(lista[1:])

#Exercicio 1.3
def existe(lista, elem):
    if lista == []:
        return False
    elif lista[0] == elem:
        return True
    else:
        return existe(lista[1:], elem)

#Exercicio 1.4
def concat(l1, l2):

    # l3 = l1 + l2 e return l3
    if l2 == []:
        return 0
    l1.append(l2[0])
    concat(l1,l2[1:])
    return  l1

#Exercicio 1.5
def inverte(lista):
    #if lista == []:
        #return []
    #else:
        #return [lista[-1]] + inverte(lista[:-1])
    
    if lista == []:
        return []
    else:
        return [lista.pop()] + inverte(lista) #pop() retira o elemento da pos -1 por defeito

#Exercicio 1.6 
def capicua(lista):

    if lista == []:
        return True
    
    elif lista[0] == lista[-1]:
        return capicua(lista[1:-1])
    
    else:
        return False

    #lista1 = inverte(lista) isto n funciona n sei pq
    #if lista1 == lista:
    #    return True
    #else:
    #    return False

#Exercicio 1.7
def concat_listas(lista):
    if lista == []:
        return []
    else:
        return lista[0] + concat_listas(lista[1:])

#Exercicio 1.8
def substitui(lista, original, novo):
    if lista == []:
        return []
    elif lista[0] == original:
        lista[0] = novo
        return [lista[0]] + substitui(lista[1:], original, novo)
    else:
        return [lista[0]] + substitui(lista[1:], original, novo)

#Exercicio 1.9
def fusao_ordenada(lista1, lista2):
    if lista1 == []:
        return lista2
    if lista2 == []:
        return lista1

    if lista1[0]>lista2[0]:
        return [lista2[0]] + fusao_ordenada(lista1,lista2[1:])
    else:
        return [lista1[0]] + fusao_ordenada(lista1[1:],lista2)

#Exercicio 1.10 (existe alguma solucao mais facil??)
def lista_subconjuntos(lista):
    if lista == []:
        return [[]]
    x  = lista_subconjuntos(lista[1:])
    return [[lista[0]] + y for y in x] + x


#Exercicio 2.1
def separar(lista):
    if lista == []:
        return ([],[])
    else:
        x,y = lista[0]
        xprim, ysecund = separar(lista[1:]) 

        #y = [lista2[0][1]] + separar(lista2[1:])

        return ([x] + xprim, [y] + ysecund)


#Exercicio 2.2 (falta contador para contar numero de elementos removidos)
def remove_e_conta(lista, elem):
    if lista == []:
        return []
    else:
        if lista[0] == elem:
            lista.pop(0)
            return remove_e_conta(lista,elem)
            
        else:
            return [lista[0]] + remove_e_conta(lista[1:],elem)

#Exercicio 3.1
def cabeca(lista):
    if lista == []:
        return None
    else:
        return lista.pop(0)

#Exercicio 3.2
def cauda(lista):
    if lista == []:
        return []
    else:
        return lista[1:]

#Exercicio 3.3
def juntar(l1, l2):
    if len(l1) != len(l2):
        return None

    if l1 == [] and l2 == []:
        return [[]]
    x  = lista_subconjuntos(lista[1:])
    return [[lista[0]] + y for y in x] + x

#Exercicio 3.4
def menor(lista):
    pass

#Exercicio 3.6
def max_min(lista):
    pass


def main():
    lista = [(1,2),(3,4)]
    print(separar(lista))
    print(lista_subconjuntos([1,2,3]))
    print(remove_e_conta([1,2,3,4],2))
    print(cabeca([7,8,3,1]))
    print(cauda([5,7,1,3,2]))
main()