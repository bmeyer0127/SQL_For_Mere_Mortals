-- List customers who ordered bikes

USE SalesOrdersExample

SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName
FROM
	Customers
WHERE
	Customers.CustomerID IN
	(SELECT DISTINCT
	Orders.CustomerID
FROM
	Orders
WHERE
	Orders.OrderNumber IN
	(SELECT
	Order_Details.OrderNumber
FROM
	Order_Details
WHERE
	Order_Details.ProductNumber IN
	(SELECT
	Products.ProductNumber
FROM
	Products
WHERE
	Products.CategoryID = 2)))