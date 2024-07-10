# BD: Guião 7


## ​7.2 
 
### *a)*

```
A fórmula não está na 2ª nem na 3ª forma normal pois o atributo "Afiliacao_Autor" depende apenas do atributo "Nome_Autor".
```

### *b)* 

```
------------------------------1FN------------------------------------------

Livro (_Titulo_Livro_, _Nome_Autor_, Afiliacao_Autor, Tipo_Livro, Preco, NoPaginas, Editor, Endereco_Editor, Ano_Publicacao)

    DF1: (Titulo_Livro, Nome_autor) -\> Editor, Tipo_livro, NoPaginas, Ano_Publicacao

    DF2: (Tipo_Livro, NoPaginas) -\> Preco

    DF3: (Nome_autor) -\> Afiliacao_Autor

    DF4: (Editor) -\> Endereco_Editor

---------------------------------------------------------------------------

------------------------------2FN------------------------------------------
temos de tirar DF3

tabela 1 : (_Titulo_Livro_, _Nome_Autor_, Tipo_Livro, Preco, NoPaginas, Editor, Endereco_Editor, Ano_Publicacao)

    DF1: (Titulo_Livro, Nome_autor) -\> Editor, Tipo_livro, NoPaginas, Ano_Publicacao

    DF2: (Tipo_Livro, NoPaginas) -\> Preco

    DF4: (Editor) -\> Endereco_Editor

tabela 2 : (_Nome_autor_, Afiliacao_Autor)

    DF3: (Nome_autor) -\> Afiliacao_Autor

---------------------------------------------------------------------------

------------------------------3FN------------------------------------------

como temos 4 dependências vamos ficar com 4 tabelas

tabela 1 : (_Titulo_Livro_, _Nome_Autor_, Tipo_Livro, NoPaginas, Editor, Ano_Publicacao)

    DF1: (Titulo_Livro, Nome_autor) -\> Editor, Tipo_livro, NoPaginas, Ano_Publicacao

tabela 2 : (_Tipo_Livro_, _NoPaginas_, Preco)

    DF2: (Tipo_Livro, NoPaginas) -\> Preco

tabela 3 : (_Nome_Autor_, Afiliacao_Autor)

    DF3: (Nome_autor) -\> Afiliacao_Autor

tabela 4 : (_Editor_, Endereco_Editor)

    DF4: (Editor) -\> Endereco_Editor

---------------------------------------------------------------------------

```

## ​7.3
 
### *a)*

```
A chave é (A,B)
```


### *b)* 

```
R1 = (<u>A</u>, <u>B</u>, C)

- A, B -\> C

R2 = (<u>A</u>, D, E, I, J)

- A -\> D, E
- D -\> I, J

R3 = (<u>B</u>, F, G, H)

- B -\> F
- F -\> G, H
```


### *c)* 

```
R1 = (<u>A</u>, <u>B</u>, C)

- A, B -\> C

R2 = (<u>A</u>, D, E)

- A -\> D, E

R3 = (<u>D</u>, I, J)

- D -\> I, J

R4 = (<u>B</u>, F)

- B -\> F

R5 = (<u>F</u>, G, H)

- F -\> G, H
```


## ​7.4
 
### *a)*

```
A chave de R serão os atributos A e B, pois a partir destes conseguimos obter o resto dos atributos da respetiva relação.
```


### *b)* 

```
A relação já está na 2FN, para passar para a 3FN transformamos cada uma das dependências funcionais em relações(tabelas) diferentes.

tabela 1 : (_A_, _B_, C, D, E)

    DF1 : (A,B) -\> C, D, E

tabela 2 : (_D_, E)

    DF2 : (D) -\> E

tabela 3 : (_C_, A)

    DF3 : (C) -\> A

```


### *c)* 

```
BCNF

tabela 1 : (_B_, C, D)

    DF1 : (B) -\> C,D

tabela 2 : (_D_, E)

    DF2 : (D) -\> E

tabela 3 : (_C_)

    perdeu-se o atributo A
```



## ​7.5
 
### *a)*

```
A chave de R é (A, B)
```

### *b)* 

```
R1 = (<u>A</u>, <u>B</u>, C, D, E)

(A, B) -\> (C, D, E)

R2 = (<u>A</u>, C, D)

A -\> C

C -\> D
```


### *c)* 

```
R1 = (<u>A</u>, <u>B</u>, C, D, E)

(A, B) -\> (C, D, E)

R2 = (A, C)

A -\> C

R3 = (<u>C</u>, D)

C -\> D
```

### *d)* 

```
BCNF = 3NF
```
