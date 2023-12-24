import operator

def addTeams(equipa):
    listaEquipas = []
    listaEquipas.append(equipa)
    while len(equipa) != 0:
        equipa = input("Introduza uma equipa: ")
        if len(equipa) == 0:
            break

        listaEquipas.append(equipa)

    return listaEquipas

    

def listaJogos(teams):
    lst = []
    for i in teams:
        for j in teams:
            if i != j:
                jogo = (i,j)
                lst.append(jogo)

    return lst

def addResults(games):
    gameDict = dict()
    for i in games:
        print("Resultado jogo {} ? ".format(i))
        goals = tuple()
        temp = input().split(",")
        temp[0] = int(temp[0])
        temp[1] = int(temp[1])
        goals = (temp[0], temp[1])
        gameDict[i] = goals
    
    return gameDict 

def printDict(results):
    for key, val in results.items():
        print("resultado[{}] -> {}".format(key,val))


def statistics(resultsDict):
    tabela = dict()
    #statsTable = [0,0,0,0,0,0]
    
    for k in resultsDict.keys():
        k1,k2 = k
        if k1 not in tabela:
            tabela[k1] = [0,0,0,0,0,0]
        
        if k2 not in tabela:
            tabela[k2] = [0,0,0,0,0,0]


    for key,val in resultsDict.items():
        if val[0] > val[1]:
            #estatísticas equipa vencedora
            tabela[key[0]][0] += 1
            tabela[key[0]][3] += val[0]
            tabela[key[0]][4] += val[1]
            tabela[key[0]][5] += 2

            #estatísticas equipa derrotada
            tabela[key[1]][2] += 1
            tabela[key[1]][3] += val[1]
            tabela[key[1]][4] += val[0]

        elif val[0] < val[1]:
            #estatísticas equipa vencedora
            tabela[key[1]][0] += 1
            tabela[key[1]][3] += val[1]
            tabela[key[1]][4] += val[0]
            tabela[key[1]][5] += 2

            #estatísticas equipa derrotada
            tabela[key[0]][2] += 1
            tabela[key[0]][3] += val[0]
            tabela[key[0]][4] += val[1]

        else: #empate
            tabela[key[0]][1] += 1
            tabela[key[0]][3] += val[0]
            tabela[key[0]][4] += val[1]
            tabela[key[0]][5] += 1

            tabela[key[1]][1] += 1
            tabela[key[1]][3] += val[1]
            tabela[key[1]][4] += val[0]
            tabela[key[1]][5] += 1
    
    return tabela

def printStatistics(stats):
    print("{} {} {: >18} {: >17} {: >18} {: >12} {: >12} {: >16} {: >2}".format("*","Equipa","Vitórias","Empates","Derrotas","GM","GS","Pontos","*"))     

    for i,j in stats.items():
        print("{} {} {: >18} {: >17} {: >18} {: >15} {: >12} {: >16} {: >2}".format("*",i,j[0],j[1],j[2],j[3],j[4],j[5],"*"))

def winner(stats): #falta última alínea, resolver depois...
    keys = list(stats.keys())
    m = keys[0]
    def p(x,dic):
        return (dic[x][-1], dic[x][-3] - dic[x][-2])
    
    for k in keys:
        if p(k,stats) > p(m,stats):
            m = k
    
    return m


def main():
    equipa = input("Introduza uma equipa: ")
    teams = addTeams(equipa)
       
    games = listaJogos(teams) #jogos possíveis

    results = addResults(games) #dicionário com resultados dos jogos
    
    printDict(results)


    estatisticas = statistics(results)


    print("**************************************************************************************************************")
    printStatistics(estatisticas)
    print("**************************************************************************************************************")

    print("O campeão é o {}!".format(winner(estatisticas)))

main()



