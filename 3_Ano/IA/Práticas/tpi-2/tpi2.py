#encoding: utf8

# YOUR NAME: Bruno Ferreira Gomes
# YOUR NUMBER: 103320

# COLLEAGUES WITH WHOM YOU DISCUSSED THIS ASSIGNMENT:
# - ...
# - ...

from semantic_network import *
from bayes_net import *
from constraintsearch import *


class MySN(SemanticNetwork):

    def __init__(self):
        SemanticNetwork.__init__(self)
        # ADD CODE HERE IF NEEDED
        pass

    def is_object(self,user,obj): 
        # IMPLEMENT HERE
        #checks if the object eyrsts in user declarations
        for q in self.declarations:
            if isinstance(q.relation, Association) and q.user == user and (q.relation.entity1 == obj or q.relation.entity2 == obj):
                return True
            if isinstance(q.relation, Member) and q.user == user and q.relation.entity1 == obj:
                return True
        return False


    def is_type(self,user,type):  
        # IMPLEMENT HERE
        for q in self.declarations:
            if isinstance(q.relation,Member) and q.user == user and q.relation.entity2 == type:
                return True
            if isinstance(q.relation,Subtype) and q.user == user and (q.relation.entity1 == type or q.relation.entity2 == type):
                return True
            if isinstance(q.relation,Association) and q.user == user and q.relation.card == "one" and q.relation.entity2 == type:
                return True
        return False


    def infer_type(self,user,obj,xpto=None):
        # IMPLEMENT HERE
        '''
        for d in self.declarations:
            if d.user == user and isinstance(d.relation, Member) and d.relation.entity1 == obj:
                return d.relation.entity2
            if d.relation.entity2 == obj:
                return "__unknown__"
            if isinstance(obj, int) or isinstance(obj, float):
                return "number"
        return None
        '''
        dic = {}
        for d in self.declarations:
            if  isinstance(d.relation, Member) and d.user == user and d.relation.entity1 == obj:
                return d.relation.entity2
            if isinstance(d.relation, Association) and d.user == user and  d.relation.card != None:
                dic[d.relation.name] = self.infer_signature(user, d.relation.name)

        for d in self.declarations:    
            if isinstance(d.relation, Association) :
                if d.relation.name in dic:
                    if  d.relation.entity1 == obj and d.user == user:
                        return dic[d.relation.name][0]
                    if d.relation.entity2 == obj and d.user == user :
                        return dic[d.relation.name][1]
                if d.relation.name not in dic and (d.relation.entity1 == obj or d.relation.entity2 == obj):
                    return '__unknown__'
                
   

 
    def infer_signature(self,user,assoc,xpto=None):
        # IMPLEMENT HERE
        for d in self.declarations:
            if d.user == user and isinstance(d.relation, Association) and d.relation.name == assoc:
                if d.relation.card != None:
                    return (d.relation.entity1,d.relation.entity2)
                else:
                    return self.infer_type(user, d.relation.entity1), self.infer_type(user, d.relation.entity2)  
       


class MyBN(BayesNet):

    def __init__(self):
        BayesNet.__init__(self)
        # ADD CODE HERE IF NEEDED
        pass

    def markov_blanket(self,var):
        # IMPLEMENT HERE
        
        '''
        lst = []
        vars = set()
        print(self.dependencies.keys())
        for i in self.dependencies.items():  #i[0] = chave i[1] = valor
            for j in self.dependencies[i[0]]:
                x,y,z = j
                
                for i in x:
                    if var in x:
                        vars.add(i)

                for i in y:
                    if var in y:
                        vars.add(i)
                
        print(vars)
        '''

        vars = set()
        aux = set()
        for k in self.dependencies:
            aux.add(k)
            for j in self.dependencies[k]:
                #j[0] j[1] j[2] j[2] -> n é preciso utilizar
                for i in j[1]:
                    aux.add(i)
                for i in j[0]:
                    aux.add(i)
            if var in aux:
                aux.discard(var)
                for t in aux:
                    vars.add(t)
            aux = set()
        final = list(vars)
        return final



class MyCS(ConstraintSearch):

    def __init__(self,domains,constraints):
        ConstraintSearch.__init__(self,domains,constraints)
        # ADD CODE HERE IF NEEDED
        pass

    def propagate(self,domains,var):
        # IMPLEMENT HERE
        #Implement in class MyCS the method propagate(var) which is called in search() after
        #choosing a specific value for var.
        edges = []
        for (m,n) in self.constraints:
            if n == var:
                edges.append((m,n))

        while edges:
            xr, yr = edges.pop()
            c = self.constraints[xr, yr]
            vals = len(domains[xr])
            domains[xr] = [val_j for val_j in domains[xr] if any(c(xr, val_j, yr, val_i) for val_i in domains[yr])]  
            if len(domains[xr]) < vals:
                for i in self.constraints:
                    if i[1] == xr:
                        edges.append(i)
        return domains
        
        

    def higherorder2binary(self,ho_c_vars,unary_c):
        # IMPLEMENT HERE
        pass


