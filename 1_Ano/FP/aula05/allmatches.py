def allMatches(teams):
    lst = []
    for i in teams:
        for j in teams:
            if i != j:
                jogo = (i,j)
                lst.append(jogo)

    return lst

def main():
    teams = ["FCP", "SCP", "SLB", "JUV"]
    print(allMatches(teams))
main()