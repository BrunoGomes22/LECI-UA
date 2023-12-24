def hm2sec(h, m, s):
    sec = h*3600 + m*60 + s
    return sec

def main():
    horas = int(input("Introduza as horas: "))
    minutos = int(input("Introduza os minutos: "))
    segundos = int(input("Introduza os segundos: "))
    print("A conversão para segundos dá: {} segundos".format(hm2sec(horas, minutos, segundos)))

main()