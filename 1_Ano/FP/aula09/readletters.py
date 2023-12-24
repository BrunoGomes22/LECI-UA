import sys

def readLetters(file):
    letters = dict()
    fileObj = open(file, 'r')
    for line in fileObj:
        for letter in line:
            if letter.isalpha():
                letter = letter.lower()
                if letter in letters:
                    letters[letter] += 1
                else:
                    letters[letter] = 1
    
    fileObj.close()
    return letters

def sortLetters(letters): #ordem decrescente do número de ocorrências
    #alternativa
    #p(x):
    #    return dic[x] depois chamar p(x) dentro da variável key
 
    num = sorted(letters, key=lambda x:letters[x], reverse=True)
    
    for i in num:
        print("{} {}".format(i,letters[i]))
    
    return


def main():
    fileName = sys.argv[1]
    dictLetters = readLetters(fileName)
    sortLetters(dictLetters)

main()