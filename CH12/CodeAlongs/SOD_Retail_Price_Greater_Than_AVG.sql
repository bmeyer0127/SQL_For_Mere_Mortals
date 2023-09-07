-- List the product names and numbers that have a quoted price greater
--	than or equal to the overall average retail price in the products table

USE SalesOrdersExample

SELECT DISTINCT
	Products.ProductName,
	Products.ProductNumber
FROM
	Products
	JOIN
	Order_Details
	ON Products.ProductNumber = Order_Details.ProductNumber
WHERE
	Order_Details.QuotedPrice >=
		(SELECT
			AVG(Products.RetailPrice)
		FROM
			Products)