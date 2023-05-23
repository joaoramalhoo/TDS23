use pubs
SELECT * FROM sys.tables

SELECT * FROM authors;

SELECT au_fname, phone FROM authors ORDER BY au_fname desc;

SELECT au_lname, phone FROM authors;

SELECT TOP 5 ord_num, qty FROM sales ORDER BY qty DESC;

SELECT * FROM DBO.authors WHERE state = 'CA'
AND contract = '0'
ORDER BY city 

SELECT SUM(qty) AS 'VENDASTOTAIS'
FROM DBO.sales

SELECT au_id, au_lname,au_fname, phone, address, city,state,zip,contract FROM
authors WHERE city = 'Berkeley'

SELECT au_id, au_lname,au_fname, phone, address, city,state,zip,contract FROM
authors WHERE city = 'Oakland'

 SELECT au_id, au_lname, au_fname, phone, address, city, state, zip, contract FROM
authors WHERE au_lname LIKE 'b%'

