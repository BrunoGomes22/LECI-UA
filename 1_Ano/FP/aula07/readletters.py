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

def sortLetters(letters):
    letters_items = letters.items()
    sorted_letters = sorted(letters_items)
    
    for i in sorted_letters:
        print(i)
    
    return


def main():
    fileName = sys.argv[1]
    dictLetters = readLetters(fileName)
    sortLetters(dictLetters)

main()