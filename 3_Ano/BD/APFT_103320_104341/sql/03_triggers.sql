--Trigger para dara update à capacidade de um comboio após inserir dados de um vagão
CREATE TRIGGER UpdateCapacidadeComboio
ON train.Vagao
AFTER INSERT, DELETE
AS
BEGIN
    DECLARE @comboioId CHAR(20);
    SET @comboioId = (SELECT FK_Comboio FROM inserted);
    UPDATE train.Comboio
    SET capacidade = (SELECT SUM(capacidade) FROM train.Vagao WHERE FK_Comboio = @comboioId)
    WHERE id_comboio = @comboioId;
END

--Exemplo de dados a inserir para dar trigger ao trigger (haha)
--INSERT INTO train.Vagao (id_vagao, descricao, capacidade, FK_Comboio)
--VALUES ('VG00Y', 'Vagão de passageiros', 100, 'CB001');


--Previne que um comboio seja apagado quando este ainda pertence a uma rota
CREATE TRIGGER PreventTrainDelete
ON train.Comboio
INSTEAD OF DELETE
AS
BEGIN
    IF EXISTS (SELECT 1 FROM train.Rota WHERE FK_Comboio IN (SELECT id_comboio FROM deleted))
    BEGIN
        RAISERROR ('Não é possível dar delete ao comboio pois este pertence a rotas', 16, 1);
    END
    ELSE
    BEGIN
        DELETE FROM train.Comboio WHERE id_comboio IN (SELECT id_comboio FROM deleted);
    END
END

--Exemplo de dados a inserir para dar trigger ao trigger
--DELETE FROM train.Comboio WHERE id_comboio = 'CB001'


--Dá delete a todas as entries de uma bagagem na database quando a eliminamos em train.Bagagem
CREATE TRIGGER DeleteBagagem
ON train.Bagagem
INSTEAD OF DELETE
AS
BEGIN
    DELETE FROM train.Trata WHERE id_bagagem IN (SELECT id_bagagem FROM deleted);
    DELETE FROM train.Bagagem WHERE id_bagagem IN (SELECT id_bagagem FROM deleted);
END

--Exemplo de dados a inserir para dar trigger ao trigger
--DELETE FROM train.Bagagem WHERE id_bagagem = 'BG001'



--Ao criar um Passageiro atribuir por deffault a class Economia
CREATE TRIGGER DeffaultClass
ON train.Passageiro
AFTER INSERT
AS
BEGIN
    INSERT INTO train.Classe_passageiro (id_passageiro, classe)
    SELECT id_passageiro, 'Economica' 
    FROM inserted;
END

--Exemplo de dados a inserir para dar trigger ao trigger
--INSERT INTO train.Passageiro(id_passageiro,nome)
--VALUES ('PS00Z', 'John Cena');
--Verificar que foi atribuída a classe ao passageiro
--select * from train.Classe_passageiro



--Dá delete a todas as entries de um membro da Tripulacao na database quando o eliminamos em train.Tripulacao
CREATE TRIGGER DeleteTripulacao
ON train.Tripulacao
INSTEAD OF DELETE
AS
BEGIN
	DELETE FROM train.Tem WHERE id_tripulacao IN (SELECT id_tripulacao FROM deleted);
	DELETE FROM train.Servico_de_bordo WHERE FK_Tripulacao IN (SELECT id_tripulacao FROM deleted);
    DELETE FROM train.tipo_comboio_tripulacao WHERE id_tripulacao IN (SELECT id_tripulacao FROM deleted);
    DELETE FROM train.Tripulacao WHERE id_tripulacao IN (SELECT id_tripulacao FROM deleted);
END

--Exemplo de dados a inserir para dar trigger ao trigger
--DELETE FROM train.Tripulacao WHERE id_tripulacao = 'TR001'


--Verificar se o preço de um serviço de bordo inserido é positivo e não é NULL
CREATE TRIGGER ValidService
ON train.Servico_de_bordo
INSTEAD OF INSERT
AS
BEGIN
   IF EXISTS (SELECT preco FROM inserted WHERE preco < 0 OR preco IS NULL)
   BEGIN
       RAISERROR ('Preço tem que ser positivo.', 16, 1);
       ROLLBACK TRANSACTION;
       RETURN;
   END

   INSERT INTO train.Servico_de_bordo (id_servico, descricao, preco, FK_Tripulacao)
   SELECT id_servico, descricao, preco, FK_Tripulacao
   FROM inserted;
END

--Exemplo de dados a inserir para dar trigger ao trigger
--INSERT INTO train.Servico_de_bordo(id_servico,descricao,preco,FK_Tripulacao)
--VALUES ('SB00X', 'Cocktail',NULL,'TR003');
--ou
--INSERT INTO train.Servico_de_bordo(id_servico,descricao,preco,FK_Tripulacao)
--VALUES ('SB00Y', 'Cocktail','-20','TR003');


--Verificar se o preço de um bilhete inserido é positivo e não é NULL
CREATE TRIGGER ValidBilhetePrice
ON train.Bilhete
INSTEAD OF INSERT
AS
BEGIN
   IF EXISTS (SELECT preco FROM inserted WHERE preco < 0 OR preco IS NULL)
   BEGIN
       RAISERROR ('Preço tem que ser positivo.', 16, 1);
       ROLLBACK TRANSACTION;
       RETURN;
   END
   INSERT INTO train.Bilhete (id_bilhete, id_rota, preco, FK_Passageiro)
   SELECT id_bilhete, id_rota, preco, FK_Passageiro
   FROM inserted;
END

--Exemplo de dados a inserir para dar trigger ao trigger
--INSERT INTO train.Bilhete(id_bilhete,id_rota,preco,FK_Passageiro)
--VALUES ('BT00X', 'RT001',NULL,'PS003');
--ou
--INSERT INTO train.Bilhete(id_bilhete,id_rota,preco,FK_Passageiro)
--VALUES ('BT00X', 'RT001','-20','PS003');