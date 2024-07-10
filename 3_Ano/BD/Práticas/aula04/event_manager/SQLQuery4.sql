create table participantes
(
	nome					varchar(15)			not null,
	morada					varchar(30)			not null,
	data_de_inscri��o		date				not null,
	email					varchar(15)			not null,
	primary key(email)
);

create table estudante
(
	e_email					varchar(15)			not null,
	primary key(e_email),
	foreign key(e_email) references participantes(email)
);

create table n�o_estudante
(
	ne_email				varchar(15)			not null,
	primary key(ne_email),
	foreign key(ne_email) references participantes(email)
);

create table institui��o
(
	nome						varchar(15)			not null,
	endere�o					varchar(30)			not null,
	primary key(nome)
);

create table autor
(
	endere�o_de_email			varchar(15)			not null,
	nome						varchar(15)			not null,
	FK_institui��o				varchar(15)			not null,
	primary key(endere�o_de_email)
);

create table artigos_cientificos
(
	nr_de_registo				char(5)				not null,
	titulo						varchar(10)			not null,
	primary key(nr_de_registo)
);

create table tem
(
	FK_artigos_cientificos		char(5)				not null,
	FK_autor					varchar(15)			not null,
);

alter table autor 
add constraint FK_institui��o
foreign key(FK_institui��o) references institui��o(nome)

alter table tem
add constraint FK_artigos_cientificos
foreign key(FK_artigos_cientificos) references artigos_cientificos(nr_de_registo)

alter table tem
add constraint FK_autor
foreign key(FK_autor) references autor(endere�o_de_email)
