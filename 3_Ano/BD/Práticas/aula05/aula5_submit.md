# BD: Guião 5


## ​Problema 5.1
 
### *a)*

```
(π Fname, Lname, Ssn (employee) ⨝ Essn = Ssn (works_on)) ⨝ Pno = Pnumber (π Pname, Pnumber (project)) 
```


### *b)* 

```
π Super_ssn, Fname, Lname (σ Super_ssn ≠ null  (π Ssn (σ Fname = 'Carlos' and Minit = 'D' and Lname = 'Gomes' (employee)) ⨝ π Super_ssn , Fname, Lname ( ρ e (employee))))
```


### *c)* 

```
π Pname, Essn, Hours (π Pname, Pnumber (project) ⨝ Pnumber = Pno (works_on))
```


### *d)* 

```
π Fname, Lname, Ssn, Dno, Hours, Pname (σ Dno = 3 and Hours > 20 ((π Fname, Lname, Ssn, Dno (employee) ⨝ Essn = Ssn (works_on)) ⨝ Pno = Pnumber (π Pname, Pnumber (project))))
```


### *e)* 

```
σ Pno = null (π Fname, Lname, Ssn (employee) ⟕ Essn = Ssn (works_on))
```


### *f)* 

```
 alpha = (σ Sex = 'F' (π Dno, Salary, Sex (employee)))
 γ Dno; avg(Salary) -> avg_Salary (alpha)
 ```


### *g)* 

```
orig = (π Fname, Lname, Ssn (employee) ⨝ Ssn = Essn (dependent))
(σ count_dependent >  2 (γ Ssn; count(Dependent_name) -> count_dependent (orig)))
```


### *h)* 

```
σ Dependent_name = null (π Mgr_ssn (department) ⨝ Mgr_ssn = Ssn (employee) ⟕ Essn = Ssn (dependent))
```


### *i)* 

```
π Fname, Lname, Ssn ,Address (σ (Dlocation≠'Aveiro' and Plocation='Aveiro') (dept_location⨝Dnumber=Dno (project⨝Pnumber=Pno (employee⨝Ssn=Essn works_on))))
```


## ​Problema 5.2

### *a)*

```
π nome,nif (fornecedor) ⨝ (π nif (fornecedor) - π fornecedor (encomenda))
```

### *b)* 

```
alpha = ρ avg_prod γ codProd; avg(unidades) -> avg_units (item)
π nome, avg_units (produto ⨝ codigo = codProd alpha)
```


### *c)* 

```
γ; avg(products_in_order) -> avg_products (γ numero; count(codProd) -> products_in_order (encomenda ⨝ numero=numEnc item))
```


### *d)* 

```
γ fornecedor.nome, produto.nome; sum(item.unidades) -> provided_units (produto⨝codigo=item.codProd (item⨝fornecedor))  
```


## ​Problema 5.3

### *a)*

```
σ (numPresc=null) (paciente ⨝ prescricao)
```

### *b)* 

```
alpha = medico ⨝ numSNS=numMedico prescricao
γ especialidade; COUNT(numPresc) -> count_prescricao (alpha)
```


### *c)* 

```
γ farmacia; count(numPresc) -> count_prescricao (σ (farmacia≠null) (prescricao))

```


### *d)* 

```
π nome (σ numPresc=null (presc_farmaco⟗nomeFarmaco=nome farmaco))
```

### *e)* 

```
γ farmacia.nome, farmaceutica.nome; count(presc_farmaco.nomeFarmaco) -> num_farmacos
π farmacia.nome, farmaceutica.nome, presc_farmaco.nomeFarmaco
(farmaceutica ⨝ presc_farmaco.numRegFarm = numReg
(farmacia ⨝ prescricao.farmacia = nome 
π prescricao.farmacia, presc_farmaco.numRegFarm, presc_farmaco.nomeFarmaco
(prescricao ⨝ numPrescX = numPresc (ρ numPrescX←numPresc (presc_farmaco)))))
```

### *f)* 

```
alpha = γ numUtente; count(numMedico) -> dif_doctors (π numUtente,numMedico prescricao)
π paciente.nome (paciente⨝(σ dif_doctors > 1 alpha))
```
