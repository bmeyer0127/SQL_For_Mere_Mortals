USE SalesOrdersExample
SELECT 
	Products.ProductName,
	Categories.CategoryDescription
FROM 
	Products
	JOIN
	Categories
	ON
	Products.CategoryID = Categories.CategoryID
ORDER BY CategoryDescription, ProductName