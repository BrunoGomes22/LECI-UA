-- Remove todas as entradas de Um passageiro após receber o seu ID
CREATE PROCEDURE train.RemovePassengerEntries
    @passengerId CHAR(9)
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        DELETE FROM train.Tem WHERE id_passageiro = @passengerId;
        DELETE FROM train.Trata WHERE id_bagagem IN (SELECT id_bagagem FROM train.Bagagem WHERE FK_Passageiro = @passengerId);
        DELETE FROM train.Bagagem WHERE FK_Passageiro = @passengerId;
        DELETE FROM train.Bilhete WHERE FK_Passageiro = @passengerId;
        DELETE FROM train.Classe_Bilhete WHERE id_bilhete IN (SELECT id_bilhete FROM train.Bilhete WHERE FK_Passageiro = @passengerId);
        DELETE FROM train.Cliente WHERE id_passageiro = @passengerId;
        DELETE FROM train.Cliente_corporativo WHERE id_passageiro = @passengerId;
        DELETE FROM train.Classe_passageiro WHERE id_passageiro = @passengerId;
        DELETE FROM train.Passageiro WHERE id_passageiro = @passengerId;

        COMMIT;
        PRINT 'All passenger entries removed successfully!';
    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'Transaction rolled back due to error: ' + ERROR_MESSAGE();
    END CATCH;
END

--Tester para RemovePassengerEntries
EXEC train.RemovePassengerEntries @passengerId = '12939u2031031230123019319';


-- Criar um novo passageiro
CREATE PROCEDURE train.CreatePassenger
    @passengerId CHAR(9),
    @passengerName VARCHAR(70)
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        INSERT INTO train.Passageiro (id_passageiro, nome)
        VALUES (@passengerId, @passengerName);

        COMMIT;
        PRINT 'Passenger created successfully!';
    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'Transaction rolled back due to error: ' + ERROR_MESSAGE();
    END CATCH;
END
--Tester para CreatePassenger

EXEC train.CreatePassenger @passengerId = 'ID_EXEMPLO', @passengerName = 'JOHN DOE(hehe)';
SELECT * FROM train.Passageiro


--Defenir se o cliente é ou não corporativo e inserir os seus dados na respetiva tabela
CREATE PROCEDURE train.TypeOfPassenger
    @passengerId CHAR(9),
    @passengerType BIT,
    @passengerNif CHAR(9),
    @passengerContrato VARCHAR(20)
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        IF @passengerType = 1
        BEGIN
            INSERT INTO train.Cliente_corporativo (id_passageiro, nif, contrato)
            VALUES (@passengerId, @passengerNif, @passengerContrato);
        END
        ELSE
        BEGIN
            INSERT INTO train.Cliente (id_passageiro, cc)
            VALUES (@passengerId, @passengerNif);
        END;

        COMMIT;
        PRINT 'Passenger type updated successfully!';
    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'Transaction rolled back due to error: ' + ERROR_MESSAGE();
    END CATCH;
END

--Tester para TypeOfPassenger (colocar @passengerType = 0 no caso de querer um Cliente não corporativo) 
select * from train.Passageiro -- verificar que o id_passageiro já existe
EXEC train.TypeOfPassenger @passengerId = 'ID_EXEMPLO', @passengerType = '1', @passengerNif = '000000000', @passengerContrato = 'Contrato Privado'
select * from train.Cliente_corporativo



-- Juntar as tabelas do train.vagao e a train.Modelo_vagao
CREATE PROCEDURE train.GetVagaoDetails
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        SELECT V.id_vagao, V.descricao, V.capacidade, V.FK_Comboio, MV.modelo
        FROM train.Vagao V
        JOIN train.Modelo_vagao MV ON V.id_vagao = MV.id_vagao;

        COMMIT;
        PRINT 'Vagao details retrieved successfully!';
    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'Transaction rolled back due to error: ' + ERROR_MESSAGE();
    END CATCH;
END

--Tester para GetVagaoDetails
EXEC train.GetVagaoDetails;


-- Juntar as tabelas train.Comboio e train.Modelo_Comboio
CREATE PROCEDURE train.GetComboioDetails
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        SELECT C.id_comboio, C.capacidade, C.data_fabrico, MC.modelo
        FROM train.Comboio C
        JOIN train.Modelo_Comboio MC ON C.id_comboio = MC.id_comboio;

        COMMIT;
        PRINT 'Comboio details retrieved successfully!';
    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'Transaction rolled back due to error: ' + ERROR_MESSAGE();
    END CATCH;
END

--Tester para train.GetComboioDetails
EXEC train.GetComboioDetails



-- Calcular o preço medio dos bilhetes por classe
CREATE PROCEDURE train.AvgPriceClass
AS
BEGIN
    BEGIN TRANSACTION;

    BEGIN TRY
        SELECT CP.classe, AVG(B.preco) AS average_ticket_price
        FROM train.Classe_passageiro CP
        JOIN train.Bilhete B ON CP.id_passageiro = B.FK_Passageiro
        GROUP BY CP.classe;

        COMMIT;
        PRINT 'Average price per class calculated successfully!';
    END TRY
    BEGIN CATCH
        ROLLBACK;
        PRINT 'Transaction rolled back due to error: ' + ERROR_MESSAGE();
    END CATCH;
END
--Número de passageiros por classe

CREATE PROCEDURE train.PassengerCount
AS
BEGIN
    SELECT CP.classe, COUNT(P.id_passageiro) AS passenger_count
    FROM train.Classe_passageiro CP
    LEFT JOIN train.Passageiro P ON CP.id_passageiro = P.id_passageiro
    GROUP BY CP.classe;
END

-- Tester para PassengerCount

EXEC train.PassengerCount

--Mostrar o/os passageiro com mais bagagem
CREATE PROCEDURE train.MostBaggage
    @topCount INT
AS
BEGIN
    SELECT TOP (@topCount) P.id_passageiro, P.nome, B.quantidade AS baggage_count
    FROM train.Passageiro P
    LEFT JOIN train.Bagagem B ON P.id_passageiro = B.FK_Passageiro
    GROUP BY P.id_passageiro, P.nome, B.quantidade
    ORDER BY baggage_count DESC;
END

--Tester para MostBaggage (@topCount indica o número de pessoas a mostrar no resultado)
EXEC train.MostBaggage @topCount = 5;

--UDF's
--vai buscar o nome do passageiro a partir do ID
CREATE FUNCTION train.PassengerName (@passengerId CHAR(9))
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @fullName VARCHAR(100);
    SELECT @fullName = nome
    FROM train.Passageiro
    WHERE id_passageiro = @passengerId;
    RETURN @fullName;
END
--Tester para train.PassengerName
SELECT train.PassengerName('PS001');


--Calcula o preço de um bilhete após aplicar um disconto
CREATE FUNCTION train.TicketWithDiscount (@ticketPrice INTEGER, @discountPercentage DECIMAL(5,2))
RETURNS INTEGER
AS
BEGIN
    DECLARE @finalPrice INTEGER;
    SET @finalPrice = @ticketPrice - (@ticketPrice * @discountPercentage / 100);
    RETURN @finalPrice;
END

--Tester para train.TicketWithDiscount
SELECT train.TicketWithDiscount(100, 10);


--Devolve a capacidade de um comboio pelo Id
CREATE FUNCTION train.TrainCapacity (@comboioId CHAR(20))
RETURNS INT
AS
BEGIN
    DECLARE @capacity INT;
    SELECT @capacity = capacidade
    FROM train.Comboio
    WHERE id_comboio = @comboioId;
    RETURN @capacity;
END

--Tester para train.TrainCapacity
SELECT train.TrainCapacity('CB001');


--Devolve o preço de um serviço pelo Id
CREATE FUNCTION train.PrecoServico (@servicoDeBordoId CHAR(9))
RETURNS INTEGER
AS
BEGIN
    DECLARE @price INTEGER;
    SELECT @price = preco
    FROM train.Servico_de_bordo
    WHERE id_servico = @servicoDeBordoId;
    RETURN @price;
END

--Tester para train.PrecoServico
SELECT train.PrecoServico('SB001');
