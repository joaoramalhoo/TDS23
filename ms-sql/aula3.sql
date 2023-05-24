USE AdventureWorks2012

SELECT * FROM PERSON.PERSON 
WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23

/*
AND-E
OR-OU
NOT- ACOMPANHADO
=
<
>
<>
*/

SELECT * FROM Production.Product
WHERE Weight > 500
AND Weight <= 700

SELECT * FROM HumanResources.Employee
WHERE MaritalStatus ='M'
AND SalariedFlag = 1
AND BirthDate <= '1983/01/01'

SELECT * FROM Person.Person
WHERE FirstName = 'Peter'
and LastName = 'Krebs'

select * from Person.EmailAddress
where BusinessEntityID = 26

select Person.Firstname, Person.Person.LastName, person.EmailAddress.EmailAddress
from Person.Person, Person.EmailAddress
where Person.BusinessEntityID = EmailAddress.BusinessEntityID
and Person.BusinessEntityID = 26

SELECT COUNT() as 'quantidade de produtos' FROM Production.Product

SELECT Distinct Name FROM Production.Product

SELECT COUNT(TITLE) FROM PERSON.Person
WHERE Title = 'Ms'
SELECT DISTINCT TITLE FROM Person.Person

SELECT ListPrice FROM Production.Product
WHERE ListPrice >= 1000
AND ListPrice <= 1500

SELECT ListPrice FROM Production.Product
WHERE ListPrice BETWeEN 1000 AND 1500

SELECT COUNT(HireDate) as 'qnt de contratados em 1 ano' FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'

SELECT * FROM PERSON.PERSON 
WHERE BusinessEntityID = 5
OR BusinessEntityID = 111
OR BusinessEntityID = 23


SELECT * FROM Person.Person
WHERE BusinessEntityID IN (5,111,23)

SELECT * FROM Person.Person
WHERE FirstName LIKE 'A%'

--QUANTOS PRODUTOS TEMOS NO BD ACIMA DE 1500

SELECT COUNT(ListPrice) FROM Production.Product
WHERE ListPrice > 1500

--QUANTAS PESSOAS TEM O SOBRENOME QUE COMEÇA COM A LETRA P

SELECT COUNT(LastName) FROM Person.Person
WHERE LastName LIKE 'P%'

--EM QUANTAS CIDADES UNICAS ESTÃO OS CLIENTE

SELECT * FROM Person.Address
SELECT COUNT(DISTINCT City) FROM Person.Address

