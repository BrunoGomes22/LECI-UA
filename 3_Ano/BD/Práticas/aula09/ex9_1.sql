--a)
CREATE PROC del_ssn @ssn INT
AS
	DELETE FROM Works_On where Essn = @ssn
	DELETE FROM Dependents where Essn = @ssn
	UPDATE Department set Mgr_ssn = null where Mgr_ssn = @ssn
	UPDATE Employee set Super_ssn = null where Super_ssn = @ssn
	DELETE FROM Employee where Ssn = @ssn

--c)
GO
CREATE TRIGGER departement_manager ON Department
INSTEAD OF INSERT, UPDATE
AS
BEGIN
	DECLARE @Mgr_ssn AS INT;
	SELECT @Mgr_ssn=Mgr_ssn FROM inserted;

	IF @Mgr_ssn IN (SELECT Mgr_ssn FROM department)
	BEGIN
		PRINT 'Funcionário já gere um departamento.'
	END
	ELSE
	BEGIN
		INSERT INTO department SELECT * FROM inserted;
		PRINT 'Sucesso.'
	END
END
GO

--d)
GO
CREATE TRIGGER cap_salary ON dbo.Employee AFTER INSERT, UPDATE
AS 
BEGIN
	DECLARE @Dno				AS INT;
	DECLARE @Manager_Salary		AS INT;
	DECLARE @Essn				AS INT;
	DECLARE @Esalary			AS INT;

	SELECT @Esalary=inserted.Salary, @Dno=inserted.Dno, @Essn=inserted.Ssn FROM inserted;
	SELECT @Manager_Salary=Employee.Salary FROM Department
		JOIN Employee ON Department.Mgr_ssn=Employee.Ssn
		WHERE @Dno=Department.Dnumber;
	
	IF @Esalary>@Manager_Salary 
	BEGIN
		UPDATE Employee
		SET Employee.Salary=@Manager_Salary
		WHERE Employee.Ssn=@Essn;
	END
END
GO

--g)
GO
CREATE FUNCTION employeeDeptHighAverage(@departId  INT)
RETURNS @table TABLE (
	pname  VARCHAR(15), 
	pnumber INT, 
	plocation VARCHAR(15), 
	dnum INT, 
	budget FLOAT, 
	totalbudget FLOAT )
AS
BEGIN
	DECLARE C CURSOR
        FOR
            SELECT Pname, Pnumber, Plocation, Dnum, SUM((Salary*1.0*Hourss)/40) AS Budget 
            FROM project JOIN works_on
            ON Pnumber=Pno
            JOIN employee
            ON Essn=Ssn
            WHERE Dnum=@departId
            GROUP BY Pnumber, Pname, Plocation, Dnum;
 
	DECLARE @pname AS VARCHAR(15), @pnumber AS INT, @plocation as VARCHAR(15), @dnum AS INT, @budget AS FLOAT, @totalbudget AS FLOAT;
	SET @totalbudget = 0;
    OPEN C;
	FETCH C INTO @pname, @pnumber, @plocation, @dnum, @budget;

	WHILE @@FETCH_STATUS = 0
	BEGIN
		SET @totalbudget += @budget;
		INSERT INTO @table VALUES (@pname, @pnumber, @plocation, @dnum, @budget, @totalbudget);
		FETCH C INTO @pname, @pnumber, @plocation, @dnum, @budget;
	END
	CLOSE C;
	DEALLOCATE C;
	RETURN;
END
GO

