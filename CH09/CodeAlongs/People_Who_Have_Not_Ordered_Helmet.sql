-- Show me customers who have never ordered a helmet

USE SalesOrdersExample
SELECT DISTINCT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName
FROM
	Customers
	LEFT JOIN
	(SELECT
		Order_Details.ProductNumber,
		Orders.CustomerID,
		Orders.OrderNumber
	FROM
		Order_Details
		JOIN
		Orders
		ON Order_Details.OrderNumber = Orders.OrderNumber
	WHERE Order_Details.ProductNumber IN ('10', '25', '26')) AS HelmetOrders
	ON Customers.CustomerID = HelmetOrders.CustomerID
WHERE HelmetOrders.OrderNumber IS NULL