-- What products have never been ordered?

USE SalesOrdersExample

SELECT
	Products.ProductName
FROM
	Products
WHERE
	Products.ProductNumber NOT IN
	(SELECT
		Order_Details.ProductNumber
	FROM
		Order_Details)
