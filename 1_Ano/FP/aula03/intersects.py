def intersects(a1, b1, a2, b2):
    if b1 <= a2 or a1 >= b2:
        return False
    else:
        return True

def main():
    x1 = input("Introduza um valor: ")
    y1 = input("Introduza um valor: ")

    x2 = input("Introduza um valor: ")
    y2 = input("Introduza um valor: ")

    print(intersects(x1,y1,x2,y2))
main()