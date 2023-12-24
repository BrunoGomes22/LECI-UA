storedValues = {}

def fibonacciMemo(inputValue):
    if inputValue in storedValues:
        return storedValues[inputValue]
    elif inputValue == 0:
        return 0
    elif inputValue == 1:
        return 1
    elif inputValue > 1:
        value = fibonacciMemo(inputValue-2) + fibonacciMemo(inputValue-1)
        storedValues[inputValue] = value
        return value


def main():
    valor = int(input("Introduza um valor para computar uma sequência de fibonacci: "))
    for i in range(valor):
        print("fib({}) = {}".format(i, fibonacciMemo(i)))    
main()
