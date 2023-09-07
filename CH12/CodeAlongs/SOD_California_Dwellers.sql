-- How many customers do we have in the state of California?

USE SalesOrdersExample

SELECT 
	COUNT(Customers.CustomerID) AS CaliforniaDwellers
FROM
	Customers
WHERE
	Customers.CustState = 'CA'