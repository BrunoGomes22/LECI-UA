import math

def poly(x):
    result = math.pow(x,2) + 2*x + 3
    return result

def main():
    print(poly(0))
    print(poly(1))
    print(poly(2))
    print(poly(poly(1)))

main()