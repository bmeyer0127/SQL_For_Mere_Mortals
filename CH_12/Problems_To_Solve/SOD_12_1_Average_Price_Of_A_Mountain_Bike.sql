-- What is the average retail price of a mountain bike?

USE SalesOrdersExample

SELECT
	AVG(Products.RetailPrice) AveragePriceOfMountainBike
FROM
	Products
WHERE
	Products.ProductName LIKE '%mountain bike%'