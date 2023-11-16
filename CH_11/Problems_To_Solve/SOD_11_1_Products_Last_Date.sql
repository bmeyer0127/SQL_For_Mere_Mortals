-- Display products and the latest date each product was ordered

USE SalesOrdersExample

SELECT
	Products.ProductName,
	(SELECT
		MAX(Orders.OrderDate)
	FROM
		Orders
		JOIN
		Order_Details
		ON Orders.OrderNumber = Order_Details.OrderNumber
	WHERE Order_Details.ProductNumber = Products.ProductNumber) AS LatestDateOrdered
FROM
	Products
