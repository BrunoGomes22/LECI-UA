create table cliente
(
	NIF				CHAR(9)			not null,
	num_carta		CHAR(9)			not null,
	endereco		VARCHAR(30)		not null,
	nome			VARCHAR(15)		not null,
	primary key(NIF)

);

create table balcão
(
	nome			varchar(15)		not null,
	numero			varchar(10)		not null,
	endereco		varchar(30)		not null,
	primary key(numero)
);



create table tipo_veiculo
(
	designacao			varchar(10)		not null,
	ar_condicionado		char(3)			not null,
	codigo				varchar(4)		not null,	
	primary key(codigo)

);

create table similaridade
(
	cod1	varchar(4)	 references tipo_veiculo(codigo)	not null,
	cod2	varchar(4)	 references tipo_veiculo(codigo)	not null,
);

create table veiculo
(
	marca				varchar(8)	not null,
	matricula			char(6)		not null,
	ano					char(4)		not null,
	FK_tipo_veiculo		varchar(4)	not null,
	primary key(matricula)
);

create table ligeiro
(
	num_lugares		int			not null,
	portas			int			not null,
	combustivel		varchar(5)	not null,
	l_codigo		varchar(4)	not null,
	primary key(l_codigo),
	foreign key (l_codigo) references tipo_veiculo(codigo)

);

create table pesado
(
	peso		int			not null,
	passageiros	int			not null,
	p_codigo	varchar(4)	not null,
	primary key(p_codigo), 
	foreign  key(p_codigo) references tipo_veiculo(codigo)
);

create table aluguer
(
	numero			varchar(12)		not null,
	duracao			time			not null,
	data_			date			not null,
	FK_cliente		char(9)			not null,
	FK_balcão		varchar(10)		not null,
	FK_veiculo		char(6)			not null,

);

alter table aluguer
add constraint FK_cliente
foreign key(FK_cliente) references cliente(NIF)

alter table aluguer
add constraint FK_balcão
foreign key(FK_balcão) references balcão(numero)

alter table aluguer
add constraint FK_veiculo
foreign key(FK_veiculo) references veiculo(matricula)

alter table veiculo
add constraint FK_tipo_veiculo
foreign key(FK_tipo_veiculo) references tipo_veiculo(codigo)
