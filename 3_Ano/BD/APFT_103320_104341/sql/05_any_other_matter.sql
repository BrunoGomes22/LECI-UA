--usar o projeto
use p7g1
--DROPPAR TABELAS
DROP TABLE train.Servico_de_bordo;
DROP TABLE train.Tripulacao;
DROP TABLE train.tipo_comboio_tripulacao;
DROP TABLE train.Bagagem;
DROP TABLE train.Trata;
DROP TABLE train.Passageiro;
DROP TABLE train.Classe_passageiro;
DROP TABLE train.Cliente;
DROP TABLE train.Cliente_corporativo;
DROP TABLE train.Bilhete;
DROP TABLE train.Classe_Bilhete;
DROP TABLE train.Comboio;
DROP TABLE train.Modelo_Comboio;
DROP TABLE train.Manuntencao;
DROP TABLE train.Vagao;
DROP TABLE train.Modelo_vagao;
DROP TABLE train.Tem;
DROP TABLE train.Estacao;
DROP TABLE train.Rota;
DROP SCHEMA train;

--INDEXES
--Criar Index para os atributos de train.Trata porque � uma junction table

CREATE INDEX idx_trata_id_tripulacao ON train.Trata (id_tripulacao);
CREATE INDEX idx_trata_id_bagagem ON train.Trata (id_bagagem);

--Criar Index para os atributos de train.Classe_passageiro porque vem de um atributo multivalor

CREATE INDEX idx_classe_passageiro_id_passageiro ON train.Classe_passageiro (id_passageiro);

--Criar Index para os atributos de train.Classe_bilhete porque vem de um atributo multivalor

CREATE INDEX idx_classe_bilhete_id_bilhete ON train.Classe_Bilhete (id_bilhete);

--Criar Index para os atributos de train.Modelo_Comboio porque vem de um atributo multivalor

CREATE INDEX idx_modelo_comboio_id_comboio ON train.Modelo_Comboio (id_comboio);

--Criar Index para os atributos de train.Modelo_Vagao porque vem de um atributo multivalor

CREATE INDEX idx_modelo_vagao_id_vagao ON train.Modelo_Vagao (id_vagao);

--Criar Index para não haver repetição de utilizadores

CREATE UNIQUE INDEX IX_Username ON train.Gestor (username);


DROP INDEX train.Trata.idx_trata_id_tripulacao
DROP INDEX train.Trata.idx_trata_id_bagagem
DROP INDEX train.Classe_passageiro.idx_classe_passageiro_id_passageiro
DROP INDEX train.Classe_Bilhete.idx_classe_bilhete_id_bilhete
DROP INDEX train.Modelo_Comboio.idx_modelo_comboio_id_comboio
DROP INDEX train.Modelo_Vagao.idx_modelo_vagao_id_vagao


--MOSTRAR DADOS DAS TABELAS
SELECT * FROM train.Bagagem;
SELECT * FROM train.Bilhete;
SELECT * FROM train.Classe_Bilhete;
SELECT * FROM train.Classe_passageiro;
SELECT * FROM train.Cliente;
SELECT * FROM train.Cliente_corporativo;
SELECT * FROM train.Comboio;
SELECT * FROM train.Estacao;
SELECT * FROM train.Manuntencao;
SELECT * FROM train.Modelo_Comboio;
SELECT * FROM train.Modelo_vagao;
SELECT * FROM train.Passageiro;
SELECT * FROM train.Rota;
SELECT * FROM train.Servico_de_bordo;
SELECT * FROM train.Tem;
SELECT * FROM train.tipo_comboio_tripulacao;
SELECT * FROM train.Trata; 
SELECT * FROM train.Tripulacao;
SELECT * FROM train.Vagao;


--TESTAR QUERIES

--Mostrar o nome dos passageiros, nome da tripulaçao que trata das suas bagagens e a quantidade de bagagem
SELECT nome, nomeFuncionario, quantidade FROM (SELECT * FROM train.Passageiro Join train.Bagagem on FK_Passageiro= id_passageiro ) 
as BC JOIN (SELECT nome as nomeFuncionario,id_bagagem FROM train.Trata as t Join train.Tripulacao as trip ON t.id_tripulacao = trip.id_tripulacao) 
as AB ON BC.id_bagagem= AB.id_bagagem


-- Testes para os forms
SELECT train.Comboio.id_comboio, capacidade, data_fabrico, modelo FROM train.Comboio, train.Modelo_Comboio WHERE train.Comboio.id_comboio = train.Modelo_Comboio.id_comboio;

SELECT train.Vagao.id_vagao, descricao, capacidade, FK_Comboio, modelo FROM train.Vagao, train.Modelo_vagao WHERE  train.Vagao.id_vagao = train.Modelo_vagao.id_vagao;


-- Views

CREATE VIEW train.PassengersWithMostBaggage
AS
SELECT P.id_passageiro, P.nome, B.quantidade AS baggage_count
FROM train.Passageiro P
LEFT JOIN train.Bagagem B ON P.id_passageiro = B.FK_Passageiro
GROUP BY P.id_passageiro, P.nome, B.quantidade

-- SELECT * FROM train.PassengersWithMostBaggage;



CREATE VIEW train.PassengerCountByClass
AS
SELECT CP.classe, COUNT(P.id_passageiro) AS passenger_count
FROM train.Classe_passageiro CP
LEFT JOIN train.Passageiro P ON CP.id_passageiro = P.id_passageiro
GROUP BY CP.classe;

-- SELECT * FROM train.PassengerCountByClass;


CREATE VIEW train.ComboioDetails
AS
SELECT C.id_comboio, C.capacidade, C.data_fabrico, MC.modelo
FROM train.Comboio C
JOIN train.Modelo_Comboio MC ON C.id_comboio = MC.id_comboio;

-- SELECT * FROM train.ComboioDetails;

CREATE VIEW train.VagaoDetails
AS
SELECT V.id_vagao, V.descricao, V.capacidade, V.FK_Comboio, MV.modelo
FROM train.Vagao V
JOIN train.Modelo_vagao MV ON V.id_vagao = MV.id_vagao;

-- SELECT * FROM train.VagaoDetails;

