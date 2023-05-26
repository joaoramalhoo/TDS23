CREATE database AulaJoin;

use aulajoin;

create table TabelaA (
ID int,
Nome varchar(10)
);

create table TabelaB(
ID int,
Nome varchar(10)
);

SELECT * FROM sys.tables

INSERT INTO TabelaA (ID,Nome) values (1, 'Robo')
INSERT INTO TabelaA (ID,Nome) values (2, 'Macaco')
INSERT INTO TabelaA (ID,Nome) values (3, 'Samurai')
INSERT INTO TabelaA (ID,Nome) values (4, 'Monitor')

INSERT INTO TabelaB (ID,Nome) values (1, 'Espada')
INSERT INTO TabelaB (ID,Nome) values (2, 'Robo')
INSERT INTO TabelaB (ID,Nome) values (3, 'Mario')
INSERT INTO TabelaB (ID,Nome) values (4, 'Samurai')

SELECT * FROM TabelaA

SELECT * FROM TabelaB

SELECT * FROM TabelaA A
INNER JOIN TabelaB B
ON A.Nome = b.nome

SELECT * FROM TabelaA A
full outer JOIN TabelaB B
ON A.Nome = b.nome

SELECT * FROM TabelaA A
left JOIN TabelaB B
ON A.Nome = b.nome

SELECT * FROM TabelaA A
left JOIN TabelaB B
ON A.Nome = b.nome
WHERE B.Nome is null

USE AdventureWorks2012
SELECT ProductID, Name, pRODUCTNUMBER FROM Production.Product
WHERE Name LIKE '%CHAI%'
union
SELECT ProductID, Name, pRODUCTNUMBER FROM Production.Product
WHERE Name LIKE '%decal%'

order by name desc

--PERSON.PERSON // EMAILADRESS
--ID, FIRSTNAME, LAST NAME, EMAIL

SELECT P.BusinessEntityID, P.FirstName, P.LastName, E.EmailAddress, RH.JobTitle FROM Person.Person P
INNER JOIN  Person.EmailAddress E

ON P.BusinessEntityID = E.BusinessEntityID
INNER JOIN HumanResources.Employee RH
ON P.BusinessEntityID = RH.BusinessEntityID
WHERE RH.JOBTITLE LIKE '%DESI%'

SELECT * FROM HumanResources.Employee


-- NOME DOS PRODUTOS E AS INFORMAÇÕES DE SUBCATEGORIA: LISTPRICE,NOME DO PRODUTO, NOME DA SUBCATEGORIA

SELECT * FROM Production.Product P

SELECT * FROM Production.ProductSubcategory S

SELECT P.ListPrice, S.NAME, P.Name 
FROM Production.Product P
INNER JOIN Production.ProductSubcategory S
ON P.ProductSubcategoryID = S.ProductSubcategoryID;

--TRAZER O CLIENTE ID, TIPO DE TELEFONE, ID DO TELEFONE E NUMERO DO TELEFONE
--PERSONPHONE E PHONENUMBERTYPE

SELECT * FROM Person.PersonPhone P
SELECT * FROM Person.PhoneNumberType T

SELECT PP.FirstName, P.BusinessEntityID, T.Name, P.PhoneNumber, P.PhoneNumberTypeID  FROM Person.PersonPhone P
INNER JOIN Person.PhoneNumberType T
ON P.PhoneNumberTypeID = T.PhoneNumberTypeID
INNER JOIN Person.Person PP
ON PP.BusinessEntityID = P.BusinessEntityID

--PRECISO DAS PESSOAS QUE TEM CARTÃO DE CRÉDITO REGISTRADO: ID, NOME, EMAIL
--PRECISO DAS PESSOAS QUE NÃO TEM CARTÃO DE CRÉDITO REGISTRADO ID, NOME, EMAIL
--person.person,EMAILADRESS, sales.PERSONCREDITCARD

SELECT * FROM Person.Person
SELECT * FROM Sales.PersonCreditCard
SELECT * FROM Person.EmailAddress

SELECT P.BusinessEntityID, P.FirstName, E.EmailAddress FROM Person.Person P
INNER JOIN Sales.PersonCreditCard C
ON P.BusinessEntityID = C.BusinessEntityID
INNER JOIN Person.EmailAddress E
ON P.BusinessEntityID = E.BusinessEntityID

--SEM CARTÃO


SELECT * FROM Person.Person
SELECT * FROM Sales.PersonCreditCard
SELECT * FROM Person.EmailAddress

SELECT P.BusinessEntityID, P.FirstName, E.EmailAddress, C.CreditCardID FROM Person.Person P
LEFT JOIN Sales.PersonCreditCard C
ON P.BusinessEntityID = C.BusinessEntityID
LEFT JOIN Person.EmailAddress E
ON P.BusinessEntityID = E.BusinessEntityID
WHERE C.CreditCardID is null


SELECT * FROM Production.Product ORDER BY ListPrice DESC

SELECT AVG(ListPrice) FROM Production.Product

SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > 438.6662

SELECT ProductID, ListPrice FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

--nome dos funcionarios que são design engineer

SELECT * FROM Person.Person

SELECT * FROM HumanResources.Employee 
WHERE JobTitle = 'DESIGN ENGINEER'

SELECT * FROM Person.Person
WHERE BusinessEntityID IN (5,6,15)

SELECT FirstName from Person.Person
where BusinessEntityID in (SELECT BusinessEntityID FROM HumanResources.Employee 
WHERE JobTitle = 'DESIGN ENGINEER')

SELECT p.FirstName, h.JobTitle FROM Person.Person P
INNER JOIN HumanResources.Employee H
on P.BusinessEntityID = H.BusinessEntityID
WHERE H.JobTitle = 'Design Engineer'