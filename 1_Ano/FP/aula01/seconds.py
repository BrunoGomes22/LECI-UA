segundos = int(input("Segundos? "))

h = int(segundos / 3600)

m = int((segundos%3600)/60)

s = int((segundos%3600)%60)

print("{:02d}:{:02d}:{:02d}".format(h, m, s))
