
def jaccardIndex(a,b):
    return len(a&b)/len(a|b)


def main():
    A = "reading"
    B = "eating"
    C = "traveling"
    D = "writing"
    E = "running"
    F = "music"
    G = "movies"
    H = "programming"

    interests = {
        "Marco": {A, D, E, F},
        "Anna": {E, A, G},
        "Maria": {G, D, E},
        "Paolo": {B, D, F},
        "Frank": {D, B, E, F, A},
        "Teresa": {F, H, C, D}
        }


    print("a) Table of common interests:")
    commoninterests = dict()
    for i in interests:
        for j in interests:
            if i==j:
                pass
            elif (i,j) not in commoninterests and (j,i) not in commoninterests:
                if interests[i] & interests[j]:
                    newset = interests[i] & interests[j]
                    commoninterests[(i,j)] = newset

    for k,v in commoninterests.items():
        print("{} -> {}".format(k,v))
    
    print("b) Maximum number of common interests:")
    maxCI = 0
    for k in commoninterests:
        if maxCI < len(commoninterests[k]):
            maxCI = len(commoninterests[k])

    print(maxCI)

    print("c) Pairs with maximum number of matching interests:")
    maxmatches = []
    for z in commoninterests.keys():
        if len(commoninterests[z]) == maxCI:
            maxmatches.append(z)

    print(maxmatches)

    print("d) Pairs with low similarity:")
    lowJaccard = []
    for i in interests:
        for j in interests:
            if i==j:
                pass
            elif (i,j) not in lowJaccard and (j,i) not in lowJaccard:
                if jaccardIndex(interests[i],interests[j])<0.25:
                    lowJaccard.append((i,j))
    print(lowJaccard)


# Start program:
main()

