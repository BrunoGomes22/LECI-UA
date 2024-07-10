CREATE SCHEMA train;
go
CREATE TABLE train.Servico_de_bordo(
id_servico	CHAR(9) NOT NULL,
descricao	VARCHAR(200),
preco	INTEGER,
FK_Tripulacao CHAR(9),
PRIMARY KEY(id_servico)
);

CREATE TABLE train.Tripulacao(
id_tripulacao CHAR(9) NOT NULL,
nome VARCHAR(70),
licenca_maquinista CHAR(9) NOT NULL,
PRIMARY KEY(id_tripulacao)
);

CREATE TABLE train.tipo_comboio_tripulacao(
id_tripulacao CHAR(9) NOT NULL,
tipo_comboio VARCHAR(50),
PRIMARY KEY(id_tripulacao, tipo_comboio)
);

CREATE TABLE train.Bagagem(
id_bagagem CHAR(9) NOT NULL,
quantidade INTEGER,
FK_Passageiro CHAR(9) NOT NULL,
PRIMARY KEY(id_bagagem)
);

CREATE TABLE train.Trata(
id_tripulacao CHAR(9) NOT NULL,
id_bagagem CHAR(9) NOT NULL,
Primary KEY(id_tripulacao, id_bagagem)
);

CREATE TABLE train.Passageiro(
id_passageiro CHAR(9) NOT NULL,
nome VARCHAR(70),
PRIMARY KEY(id_passageiro)
);

CREATE TABLE train.Classe_passageiro(
id_passageiro CHAR(9) NOT NULL,
classe VARCHAR(30),
PRIMARY KEY(classe, id_passageiro)
);

CREATE TABLE train.Cliente(
id_passageiro CHAR(9) NOT NULL,
cc CHAR(9),
PRIMARY KEY(id_passageiro)
);

CREATE TABLE train.Cliente_corporativo(
id_passageiro CHAR(9) NOT NULL,
nif CHAR(9),
contrato VARCHAR(20),
PRIMARY KEY(id_passageiro)
);

CREATE TABLE train.Bilhete(
id_bilhete CHAR(9) NOT NULL,
id_rota CHAR(9) NOT NULL,
preco INTEGER,
FK_Passageiro CHAR(9) NOT NULL,
PRIMARY KEY(id_bilhete)
);

CREATE TABLE train.Classe_Bilhete(
id_bilhete CHAR(9)NOT NULL,
classe VARCHAR(30),
PRIMARY KEY(classe,id_bilhete)
);

CREATE TABLE train.Comboio (
	id_comboio			CHAR(20)			NOT NULL,
	capacidade			INT					NOT NULL,
	data_fabrico		DATE				NOT NULL,
	PRIMARY KEY(id_comboio)
);

CREATE TABLE train.Modelo_Comboio (
	id_comboio			CHAR(20)			NOT NULL,
	modelo				VARCHAR(15)			NOT NULL,
	PRIMARY KEY(id_comboio, modelo),
	FOREIGN KEY(id_comboio) REFERENCES train.Comboio(id_comboio)
);

CREATE TABLE train.Manuntencao (
	id_manuntencao		CHAR(10)			NOT NULL,
	descricao			VARCHAR(40),
	data_manuntencao	DATE				NOT NULL,
	FK_Comboio			CHAR(20)			NOT NULL,
	PRIMARY KEY(id_manuntencao),
	FOREIGN KEY(FK_Comboio) REFERENCES train.Comboio(id_comboio)
);

CREATE TABLE train.Vagao (
	id_vagao			CHAR(10)			NOT NULL,
	descricao			VARCHAR(40),
	capacidade			INT					NOT NULL,
	FK_Comboio			CHAR(20),			--pode ser null porque podem existir vagoes sem comboios
	PRIMARY KEY(id_vagao),
	FOREIGN KEY(FK_Comboio) REFERENCES train.Comboio(id_comboio)
);

CREATE TABLE train.Modelo_vagao (
	id_vagao			CHAR(10)			NOT NULL,
	modelo				VARCHAR(15)			NOT NULL,
	PRIMARY KEY(id_vagao,modelo),
	FOREIGN KEY(id_vagao) REFERENCES train.Vagao(id_vagao)
);

CREATE TABLE train.Tem(
	id_servico CHAR(9) NOT NULL,
	id_tripulacao CHAR(9) NOT NULL,
	id_passageiro CHAR(9) NOT NULL,
	id_comboio CHAR(20) NOT NULL,
	Primary key(id_servico, id_tripulacao, id_passageiro, id_comboio)
);
	
CREATE TABLE train.Estacao(
	id_estacao CHAR(9) NOT NULL,
	nome VARCHAR(100),
	localizacao VARCHAR(100),
	horario_abertura TIME,
	horario_fecho TIME,
	FK_Comboio CHAR(20) NOT NULL,
	FK_Rota CHAR(9) NOT NULL,
	PRIMARY KEY(id_estacao)
);

CREATE TABLE train.Rota(
	id_rota CHAR(9) NOT NULL,
	horario_partida TIME,
	horario_chegada TIME,
	estacao_partida VARCHAR(100),
	estacao_chegada VARCHAR(100),
	FK_Comboio CHAR(20) NOT NULL,
	PRIMARY KEY(id_rota)
);

CREATE TABLE train.Gestor(  --tabela que guarda dados de gestores registados
	id_gestor INT NOT NULL IDENTITY(1,1),
	firstname VARCHAR(50) NOT NULL,
	lastname VARCHAR(50) NOT NULL,
	username VARCHAR(50) NOT NULL,
	pass VARCHAR(64) NOT NULL,
	salt VARCHAR(32),
	PRIMARY KEY(id_gestor)
);


Alter Table train.Rota
ADD CONSTRAINT FK_Comboio FOREIGN KEY (FK_Comboio) REFERENCES train.Comboio(id_comboio);

Alter Table train.Estacao
ADD CONSTRAINT FK_Comboio_2 FOREIGN KEY (FK_Comboio) REFERENCES train.Comboio(id_comboio);

Alter Table train.Estacao
ADD CONSTRAINT FK_Rota FOREIGN KEY (FK_Rota) REFERENCES train.Rota(id_rota)

Alter Table train.Tem
ADD CONSTRAINT FK_id_servico FOREIGN KEY (id_servico) REFERENCES train.Servico_de_bordo(id_servico);

Alter Table train.Tem
ADD CONSTRAINT FK_tripulacao FOREIGN KEY (id_tripulacao) REFERENCES train.Tripulacao(id_tripulacao);

Alter Table train.Tem
ADD CONSTRAINT FK_Passageiro_4 FOREIGN KEY (id_passageiro) REFERENCES train.Passageiro(id_passageiro);

Alter Table train.Tem
ADD CONSTRAINT FK_comboio_3 FOREIGN KEY (id_comboio) REFERENCES train.Comboio(id_comboio);

Alter Table train.Bilhete
ADD CONSTRAINT FK_Passageiro FOREIGN KEY (FK_Passageiro) REFERENCES train.Passageiro(id_passageiro);

Alter Table train.Classe_Bilhete
ADD CONSTRAINT FK_Classe FOREIGN KEY (id_bilhete) REFERENCES train.Bilhete(id_bilhete);

Alter Table train.Cliente_corporativo
ADD CONSTRAINT FK_Cliente FOREIGN KEY (id_passageiro) REFERENCES train.Passageiro(id_passageiro);

Alter Table train.Cliente
ADD CONSTRAINT FK_Cliente_2 FOREIGN KEY (id_passageiro) REFERENCES train.Passageiro(id_passageiro);

Alter Table train.Classe_passageiro 
ADD CONSTRAINT FK_Passageiro_2 FOREIGN KEY (id_passageiro) REFERENCES train.Passageiro(id_passageiro);

Alter Table train.Bagagem
ADD CONSTRAINT FK_Passageiro_3 FOREIGN KEY (FK_Passageiro) REFERENCES train.Passageiro(id_passageiro);

Alter Table train.Trata
ADD CONSTRAINT FK_Tripulacao_2 FOREIGN KEY(id_tripulacao) REFERENCES train.Tripulacao(id_tripulacao);

Alter Table train.Trata
ADD CONSTRAINT FK_id_bagagem FOREIGN KEY(id_bagagem) REFERENCES train.Bagagem(id_bagagem);

Alter Table train.tipo_comboio_tripulacao
ADD CONSTRAINT FK_Tripulacao_3 FOREIGN KEY (id_tripulacao) REFERENCES train.Tripulacao(id_tripulacao);

Alter TABLE train.Servico_de_bordo
ADD CONSTRAINT FK_Tripulacao_4 FOREIGN KEY (FK_Tripulacao) REFERENCES train.Tripulacao(id_tripulacao);



