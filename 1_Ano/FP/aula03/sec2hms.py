def sec2hms(sec):
    h = int(sec / 3600)
    m = int((sec%3600)/60)
    s = int((sec%3600)%60)
    return h, m,s

def main():
    segundos = int(input("Introduza os segundos: "))
    print(sec2hms(segundos))

main()