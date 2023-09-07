-- List customers and the dates they placed an order, sorted in order date sequence
USE SalesOrdersExample
SELECT
	OrderNumber,
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	OrderDate
FROM
	Customers
	JOIN
	Orders
	ON Customers.CustomerID = Orders.CustomerID