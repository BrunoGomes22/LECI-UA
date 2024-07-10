create table participantes
(
	nome					varchar(15)			not null,
	morada					varchar(30)			not null,
	data_de_inscrição		date				not null,
	email					varchar(15)			not null,
	primary key(email)
);

create table estudante
(
	e_email					varchar(15)			not null,
	primary key(e_email),
	foreign key(e_email) references participantes(email)
);

create table não_estudante
(
	ne_email				varchar(15)			not null,
	primary key(ne_email),
	foreign key(ne_email) references participantes(email)
);

create table instituição
(
	nome						varchar(15)			not null,
	endereço					varchar(30)			not null,
	primary key(nome)
);

create table autor
(
	endereço_de_email			varchar(15)			not null,
	nome						varchar(15)			not null,
	FK_instituição				varchar(15)			not null,
	primary key(endereço_de_email)
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
add constraint FK_instituição
foreign key(FK_instituição) references instituição(nome)

alter table tem
add constraint FK_artigos_cientificos
foreign key(FK_artigos_cientificos) references artigos_cientificos(nr_de_registo)

alter table tem
add constraint FK_autor
foreign key(FK_autor) references autor(endereço_de_email)
