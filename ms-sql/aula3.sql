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