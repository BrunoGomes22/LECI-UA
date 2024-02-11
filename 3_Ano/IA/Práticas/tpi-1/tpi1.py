from tree_search import *
from cidades import *
from blocksworld import *


def func_branching(connections,coordinates):
    #IMPLEMENT HERE
    cities = MyCities(connections,coordinates)
    numConnections = 0
    citiesList = []
    for i in connections: #i[0] -> primeira cidade i[1] -> segunda cidade
        #print(len(cities.actions(i[0])))
        if i[0] not in citiesList:
            citiesList.append(i[0])
            numConnections += len(cities.actions(i[0]))

        if i[1] not in citiesList:
            citiesList.append(i[1])
            numConnections += len(cities.actions(i[1]))

    avg = ((numConnections)/(len(citiesList)))-1
    return avg
    

class MyCities(Cidades):
    def __init__(self,connections,coordinates):
        super().__init__(connections,coordinates)
        # ADD CODE HERE IF NEEDED

class MySTRIPS(STRIPS):
    def __init__(self,optimize=False):
        super().__init__(optimize)

    def simulate_plan(self,state,plan):
        #IMPLEMENT HERE
        for action in plan:  
            state = self.result(state, action) 

        return state

 
class MyNode(SearchNode):
    def __init__(self,state,parent,cost=0,heuristic=0,depth=0):
        super().__init__(state,parent)
        #ADD HERE ANY CODE YOU NEED
        self.cost = cost
        self.heuristic = heuristic
        self.depth = depth


class MyTree(SearchTree):

    def __init__(self,problem, strategy='breadth',optimize=0,keep=0.25): 
        #super().__init__(problem,strategy)
        #ADD HERE ANY CODE YOU NEED
        self.optimize = optimize
        self.keep = keep
        self.problem = problem
        self.strategy = strategy
        self.solution = None
        self.non_terminals = 0
        problem_initial = problem.initial if optimize < 2 else problem[-2]

        if optimize == 0:
            root = MyNode(problem_initial, None)
            self.all_nodes = [root]
            self.open_nodes = [0]

        if optimize >= 1:
            root = (problem_initial, None, 0, 0, 0)
            self.all_nodes = [root]
            self.open_nodes = [0]

        

    def astar_add_to_open(self,lnewnodes):
        #IMPLEMENT HERE
        if self.optimize == 0:
            self.open_nodes.extend(lnewnodes)
            self.open_nodes.sort(key=lambda x: self.all_nodes[x].heuristic + self.all_nodes[x].cost) 
        else: 
            self.open_nodes.extend(lnewnodes)
            self.open_nodes.sort(key=lambda x: self.all_nodes[x][2] + self.all_nodes[x][2])


    # remove a fraction of open (terminal) nodes
    # with lowest evaluation function
    # (used in Incrementally Bounded A*)
    def forget_worst_terminals(self):
        #IMPLEMENT HERE
        pass

    # procurar a solucao
    def search2(self):
        #IMPLEMENT HERE
        #self.non_terminals = 0
        while self.open_nodes != []:
            nodeID = self.open_nodes.pop(0)
            node = self.all_nodes[nodeID]
            if self.optimize==0:
                if self.problem.goal_test(node.state):
                    self.solution = node
                    self.terminals = len(self.open_nodes)+1
                    return self.get_path(node)
            if self.optimize==1:
                if self.problem.goal_test(node[0]):
                    self.solution = node
                    self.terminals = len(self.open_nodes)+1
                    return self.get_path(node)
            if self.optimize>=2:
                if self.problem[0][4](node[0],self.problem[2]):
                    self.solution = node
                    self.terminals = len(self.open_nodes)+1
                    return self.get_path(node)        

            lnewnodes = []
            self.non_terminals += 1
            status = node.state if self.optimize == 0 else node[0]
            acts = self.problem.domain.actions(status) if self.optimize <2 else self.problem[0][0](status)
            

            for a in acts:
                resultado = self.problem.domain.result(status,a) if self.optimize <2 else self.problem[0][1](status,a)
                newstate = resultado
                if newstate not in self.get_path(node):
                    if self.optimize == 0:
                        newnode = MyNode(newstate,nodeID, node.cost + self.problem.domain.cost(node.state, a), self.problem.domain.heuristic(newstate, self.problem.goal), node.depth + 1)
                    if self.optimize ==1: #state,parent,cost=0,heuristic=0,depth=0
                        newnode = (newstate,nodeID, node[2] + self.problem.domain.cost(node[0], a), self.problem.domain.heuristic(newstate, self.problem.goal), node[4] + 1) 
                    if self.optimize >=2: #state,parent,cost=0,heuristic=0,depth=0
                        newnode = (newstate,nodeID, node[2] + self.problem[0][2](node[0], a), self.problem[0][3](newstate, self.problem[2]), node[4] + 1) 
                    
                    lnewnodes.append(len(self.all_nodes))
                    self.all_nodes.append(newnode)
            self.add_to_open(lnewnodes)
        return None
        

    def get_path(self,node):
            if isinstance(node,MyNode):
                parent = node.parent
            else:
                parent = node[1]   

            if isinstance(node,MyNode):
                state = node.state
            else:
                state = node[0]

            if parent == None:
                return [state]
            path = self.get_path(self.all_nodes[parent])
            path += [state]
            return(path)

            '''
            if parent == None:
                return [parent]
            path = self.get_path(self.all_nodes[parent])
            path += [state]
            print(path)
            '''
# If needed, auxiliary functions can be added


    
    
