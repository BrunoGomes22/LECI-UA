--d)
SELECT employee.Fname, employee.Lname, employee.Ssn, employee.Dno, works_on.Hours, project.Pname 
FROM employee 
INNER JOIN works_on ON employee.Ssn = works_on.Essn 
INNER JOIN project ON works_on.Pno = project.Pnumber 
WHERE employee.Dno = 3 AND works_on.Hours > 20;


--e)
select * from Works_On right outer join (select Fname,Lname,Ssn from Employee) as olg on Essn = olg.ssn where Pno is Null

--f)
SELECT Dno, AVG(Salary) AS avg_Salary 
FROM (SELECT Dno, Salary FROM employee WHERE Sex = 'F') AS alpha
GROUP BY Dno;

--g)
SELECT Ssn, COUNT(Dependent_name) AS count_dependent 
FROM (
  SELECT Fname, Lname, Ssn, Dependent_name 
  FROM employee 
  JOIN dependents ON Ssn = Essn
) AS orig
GROUP BY Ssn
HAVING COUNT(Dependent_name) > 2;

--h)
SELECT Mgr_ssn 
FROM department 
JOIN employee ON Mgr_ssn = Ssn 
LEFT JOIN dependents ON Essn = Ssn 
WHERE Dependent_name IS NULL;

--i) parcialmente correta
SELECT employee.Fname, employee.Lname, employee.Ssn, employee.Address
FROM employee
JOIN works_on ON employee.Ssn = works_on.Essn
JOIN project ON works_on.Pno = project.Pnumber
JOIN department ON project.Dno = department.Dnumber
JOIN dept_location ON department.Dnumber = dept_location.Dnumber
WHERE dept_location.Dlocation <> 'Aveiro' AND project.Plocation = 'Aveiro';

