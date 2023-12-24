def openFile(fich):
    lst = []
    for line in fich:
        line.split()
        lst.append(line.split()[-1])

    return lst

def  createDict(lastNameslist):
    names = dict()
    for i in lastNameslist:
        names[i]

    return names
    
def main():
    fin = open('names.txt')
    lastNames = openFile(fin)
    fin.close()

    print(createDict(lastNames))
main()