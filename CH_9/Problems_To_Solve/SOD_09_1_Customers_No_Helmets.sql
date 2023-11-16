-- Show me customers who have never ordered a helmet

USE SalesOrdersExample
SELECT DISTINCT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName
FROM
	Customers
	LEFT JOIN
	(SELECT
		Orders.CustomerID,
		Order_Details.ProductNumber
	FROM 
		Orders
		JOIN
		Order_Details
		ON Orders.OrderNumber = Order_Details.OrderNumber
	WHERE Order_Details.ProductNumber IN (10, 25, 26)) AS HelmetCustomers
	ON Customers.CustomerID = HelmetCustomers.CustomerID
WHERE HelmetCustomers.CustomerID IS NULL