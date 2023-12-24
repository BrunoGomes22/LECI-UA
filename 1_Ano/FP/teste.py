
def onlyCaps(s):
    if len(s) == 0:
        return 

    elif s[0].isupper() == True:
        return s[0] + str(onlyCaps(s[1:]))
    else:
        return onlyCaps(s[1:])
    



def main():

    name = "Jonh Fek Kdafsd"
    print(onlyCaps(name).rstrip("None"))
main()