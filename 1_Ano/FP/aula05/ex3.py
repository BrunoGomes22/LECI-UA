def inputFloatList() :
    lst = []
    
    resp = (input("Introduza um número: "))
    while len(resp) != 0:
        num = float(resp)
        lst.append(num)
        resp = (input("Introduza um número: "))
            
    return lst

def countLower(lst,v):
    count = 0
    for i in range(len(lst)):
        if lst[i] < v:
            count += 1

    return count

def minmax(lst):
    highest_number = 0
    for number in lst:
        if number > highest_number:
            highest_number = number

    lowest_number = lst[0]
    for number1 in lst:
        if number1 < lowest_number:
            lowest_number = number1

    return highest_number, lowest_number

def average(num1,num2):
    return (num1+num2)/2

def main():

    lista = inputFloatList()
    a,b = minmax(lista)
    media = average(a,b)
    print("A média entre o mínimo e o máximo da lista é {}".format(media)) 
    lowerNum = countLower(lista,media)
    print("A lista tem {} valores inferiores ao valor médio".format(lowerNum))
main()