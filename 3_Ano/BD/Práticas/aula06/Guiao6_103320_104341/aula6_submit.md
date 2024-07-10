# BD: Guião 6

## Problema 6.1

### *a)* Todos os tuplos da tabela autores (authors);

```
SELECT * FROM authors;
```

### *b)* O primeiro nome, o último nome e o telefone dos autores;

```
SELECT au_fname, au_lname, phone FROM authors;
```

### *c)* Consulta definida em b) mas ordenada pelo primeiro nome (ascendente) e depois o último nome (ascendente); 

```
SELECT au_fname, au_lname, phone FROM authors
ORDER BY au_fname, au_lname;
```

### *d)* Consulta definida em c) mas renomeando os atributos para (first_name, last_name, telephone); 

```
SELECT au_fname as first_name ,au_lname as last_name , phone FROM authors
ORDER BY first_name asc, last_name asc;
```

### *e)* Consulta definida em d) mas só os autores da Califórnia (CA) cujo último nome é diferente de ‘Ringer’; 

```
SELECT au_fname as first_name ,au_lname as last_name , phone, state FROM authors
WHERE state = 'CA' AND au_lname != 'Ringer'
ORDER BY first_name asc, last_name asc;
```

### *f)* Todas as editoras (publishers) que tenham ‘Bo’ em qualquer parte do nome; 

```
SELECT * FROM publishers
WHERE pub_name LIKE '%Bo%';
```

### *g)* Nome das editoras que têm pelo menos uma publicação do tipo ‘Business’; 

```
select * from publishers as p inner join titles as t on p.pub_id = t.pub_id
WHERE type = 'business';
```

### *h)* Número total de vendas de cada editora; 

```
select pub_id, NTotalVendas = sum(s.qty) from sales as s inner join titles as t on s.title_id = t.title_id
group by pub_id;
```

### *i)* Número total de vendas de cada editora agrupado por título; 

```
select pub_id, title, NTotalVendas = sum(s.qty) from sales as s inner join titles as t on s.title_id = t.title_id
group by pub_id, title;

```

### *j)* Nome dos títulos vendidos pela loja ‘Bookbeat’; 

```
select stor_name, ord_num, title from stores, sales, titles
where stores.stor_id = sales.stor_id AND sales.title_id = titles.title_id and stor_name = 'Bookbeat';
```

### *k)* Nome de autores que tenham publicações de tipos diferentes; 

```
SELECT authors.au_fname, authors.au_lname
FROM authors
JOIN titleauthor ON authors.au_id = titleauthor.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
GROUP BY authors.au_fname, authors.au_lname
HAVING COUNT(DISTINCT titles.type) > 1;
```

### *l)* Para os títulos, obter o preço médio e o número total de vendas agrupado por tipo (type) e editora (pub_id);

```
select type, avg_type_price = avg(price)
from titles
join sales on titles.title_id = sales.title_id
group by type

```

### *m)* Obter o(s) tipo(s) de título(s) para o(s) qual(is) o máximo de dinheiro “à cabeça” (advance) é uma vez e meia superior à média do grupo (tipo);

```
SELECT type
FROM titles
GROUP BY type
HAVING MAX(titles.advance) > 1.5 * AVG(titles.advance)
```

### *n)* Obter, para cada título, nome dos autores e valor arrecadado por estes com a sua venda;

```
SELECT titles.title, authors.au_fname, authors.au_lname, SUM(sales.qty * titles.price * titles.royalty / 100 * titleauthor.royaltyper) as total_sales
FROM titleauthor
JOIN authors ON titleauthor.au_id = authors.au_id
JOIN titles ON titleauthor.title_id = titles.title_id
JOIN sales ON titles.title_id = sales.title_id
GROUP BY titles.title, authors.au_lname, authors.au_fname
```

### *o)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, a faturação total, o valor da faturação relativa aos autores e o valor da faturação relativa à editora;

```
SELECT title, ytd_sales, 
(price * ytd_sales) AS faturacao_total, 
(ytd_sales * royalty * price /100) AS auths_revenue, 
(ytd_sales*price-ytd_sales*price*royalty/100) AS publisher_revenue 
FROM titles
ORDER BY title;

```

### *p)* Obter uma lista que incluía o número de vendas de um título (ytd_sales), o seu nome, o nome de cada autor, o valor da faturação de cada autor e o valor da faturação relativa à editora;

```
select  title,ytd_sales, au_fname+' '+au_lname as author, titles.price * titles.royalty *  royaltyper/ 10000 * titles.ytd_sales as auth_revenue,
ytd_sales*price-ytd_sales*price*royalty/100 as publisher_revenue
from titles
join titleauthor on titleauthor.title_id=titles.title_id
join authors on authors.au_id=titleauthor.au_id
order by title, au_fname;
```

### *q)* Lista de lojas que venderam pelo menos um exemplar de todos os livros;

```
SELECT stor_name, COUNT(DISTINCT title) as different
FROM stores, sales, titles
WHERE stores.stor_id = sales.stor_id AND sales.title_id = titles.title_id
GROUP BY stor_name
HAVING COUNT(DISTINCT title) = (SELECT COUNT(title) FROM titles)
```

### *r)* Lista de lojas que venderam mais livros do que a média de todas as lojas;

```
SELECT stores.stor_name,  stores.stor_id, COUNT(sales.qty) AS num_books_sold
FROM stores
JOIN sales ON stores.stor_id = sales.stor_id
GROUP BY stores.stor_name, stores.stor_id
HAVING COUNT(sales.qty) > (SELECT AVG(total_sales_per_store) 
                           FROM (SELECT COUNT(qty) AS total_sales_per_store 
                                 FROM sales 
                                 GROUP BY stor_id) AS sales_per_store)
```

### *s)* Nome dos títulos que nunca foram vendidos na loja “Bookbeat”;

```
SELECT titles.title
FROM titles
WHERE NOT EXISTS (
  SELECT *
  FROM sales
  INNER JOIN stores ON sales.stor_id = stores.stor_id
  WHERE sales.title_id = titles.title_id AND stores.stor_name = 'Bookbeat'
```

### *t)* Para cada editora, a lista de todas as lojas que nunca venderam títulos dessa editora; 

```
(SELECT pub_name, stor_name
FROM stores, publishers )
EXCEPT
(SELECT pub_name, stor_name
FROM publishers JOIN (    SELECT pub_id AS ppid, sales.stor_id, stor_name
                        FROM titles JOIN sales
                        ON titles.title_id=sales.title_id
                        JOIN stores
                        ON sales.stor_id=stores.stor_id) AS T            
ON pub_id=ppid);
```

## Problema 6.2

### ​5.1

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_1_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_1_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
select * from (select Pname,Pnumber from project) as pro, (select * from works_on, (select Fname,Lname,SSN from employee) as em where em.SSN = Essn) empl where pro.Pnumber =  empl.Pno order by Fname desc
```

##### *b)* 

```
select * from (select Ssn from Employee where Fname='Carlos' and Minit='D' and Lname='Gomes') as act , (select Super_ssn,Fname,Lname from Employee as e) as bct where bct.Super_ssn is not Null
```

##### *c)* 

```
select Pname,Essn,Hourss from Works_On, (select Pname,Pnumber from project) as prop where prop.Pnumber = Pno 
```

##### *d)* 

```
SELECT employee.Fname, employee.Lname, employee.Ssn, employee.Dno, works_on.Hours, project.Pname 
FROM employee 
INNER JOIN works_on ON employee.Ssn = works_on.Essn 
INNER JOIN project ON works_on.Pno = project.Pnumber 
WHERE employee.Dno = 3 AND works_on.Hours > 20;
```

##### *e)* 

```
SELECT * from Works_On 
RIGHT OUTER JOIN (select Fname,Lname,Ssn from Employee) as olg 
ON Essn = olg.ssn where Pno is Null
```

##### *f)* 

```
SELECT Dno, AVG(Salary) AS avg_Salary 
FROM (SELECT Dno, Salary FROM employee WHERE Sex = 'F') AS alpha
GROUP BY Dno;
```

##### *g)* 

```
SELECT Ssn, COUNT(Dependent_name) AS count_dependent 
FROM (
  SELECT Fname, Lname, Ssn, Dependent_name 
  FROM employee 
  JOIN dependents ON Ssn = Essn
) AS orig
GROUP BY Ssn
HAVING COUNT(Dependent_name) > 2;
```

##### *h)* 

```
SELECT Mgr_ssn 
FROM department 
JOIN employee ON Mgr_ssn = Ssn 
LEFT JOIN dependents ON Essn = Ssn 
WHERE Dependent_name IS NULL;
```

##### *i)* 

```
SELECT employee.Fname, employee.Lname, employee.Ssn, employee.Address
FROM employee
JOIN works_on ON employee.Ssn = works_on.Essn
JOIN project ON works_on.Pno = project.Pnumber
JOIN department ON project.Dno = department.Dnumber
JOIN dept_location ON department.Dnumber = dept_location.Dnumber
WHERE dept_location.Dlocation <> 'Aveiro' AND project.Plocation = 'Aveiro';
```

### 5.2

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_2_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_2_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
select Nome, Nif from Fornecedor as F left outer join Encomenda as E on F.Nif = E.Fornecedor where E.Numero is Null
```

##### *b)* 

```
select Nome, avg(I.Unidades) as average from Item as I join Produto as P on I.CodProd = P.codigo group by Nome, CodProd
```


##### *c)* 

```
select avg(products_in_order) as average from (select numero, count(CodProd) as products_in_order from Encomenda, Item where Numero = NumEnc group by numero) as average_products
```


##### *d)* 

```
select distinct Nome_Fornecedor, Nome as Nome_Produto, sum(joi.unidades) as provided_units from produto, (select CodProd, Unidades, Nome as Nome_Fornecedor from item, fornecedor) as joi where codigo = joi.CodProd group by Nome_Fornecedor, Nome
```

### 5.3

#### a) SQL DDL Script
 
[a) SQL DDL File](ex_6_2_3_ddl.sql "SQLFileQuestion")

#### b) Data Insertion Script

[b) SQL Data Insertion File](ex_6_2_3_data.sql "SQLFileQuestion")

#### c) Queries

##### *a)*

```
select paciente.NSNS, paciente.Nome from Paciente right outer join prescricao on paciente.NSNS = prescricao.NSNS where Nuni is null
```

##### *b)* 

```
select medico.especialidade, count(Nuni) as count_prescricao from medico join prescricao on medico.NID = prescricao.NID group by medico.especialidade 
```


##### *c)* 

```
select Nome_farmacia, count(Nuni) as count_prescricao from prescricao where Nome_farmacia is not Null group by Nome_farmacia
```


##### *d)* 

```
select Nome from Presc_farmaco right outer join farmaco as junct on Nome_farmaco = Nome where Num_presc is null
```

##### *e)* 

```
select Nome as farmacia_nome,Nomoes as Farmaceutica_nome, count(Nome_farmaco) as num_farmacos from (select distinct Nome,Nomoes,Nome_farmaco from (select Nome as Nomoes,Endereco, Telefone, Nreg from farmaceutica)as far join (select * from farmacia as fa join (select Nome_farmacia, Num_reg_farm, Nome_farmaco from prescricao as p join presc_farmaco as f on p.Nuni = f.Num_presc) as t on t.Nome_farmacia= fa.Nome) as l on Nreg = l.Num_reg_farm)as far group by Nomoes, Nome

```

##### *f)* 

```
select Nome from paciente, (select NSNS, dif_doctors from (select NSNS, count(NID) as dif_doctors from (select distinct NSNS,NID from prescricao) as col group by NSNS)as coln where dif_doctors > 1) as colne where paciente.NSNS = colne.NSNS
```
