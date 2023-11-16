-- Display all customers and any orders for bicycles

USE SalesOrdersExample
SELECT 
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	BO.OrderNumber,
	BO.OrderDate,
	BO.ShipDate,
	BO.ProductName,
	BO.QuantityOrdered,
	BO.QuotedPrice
	
FROM
	Customers
	LEFT JOIN
	(SELECT
		Orders.OrderNumber,
		Orders.OrderDate,
		Orders.CustomerID,
		Orders.ShipDate,
		Products.ProductName,
		Order_Details.QuantityOrdered,
		Order_Details.QuotedPrice
	FROM
		(((Orders
		JOIN
		Order_Details
		ON Orders.OrderNumber = Order_Details.OrderNumber)
		JOIN
		Products
		ON Order_Details.ProductNumber = Products.ProductNumber)
		JOIN 
		Categories
		ON Products.CategoryID = Categories.CategoryID)
	WHERE
		Categories.CategoryDescription = 'Bikes')
	AS BO
	ON Customers.CustomerID = BO.CustomerID
ORDER BY CustName