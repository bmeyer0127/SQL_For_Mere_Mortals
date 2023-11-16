-- What products have never been ordered?

USE SalesOrdersExample
SELECT
	Products.ProductName
FROM
	Products
	LEFT JOIN
	Order_Details
	ON Products.ProductNumber = Order_Details.ProductNumber
WHERE Order_Details.OrderNumber IS NULL