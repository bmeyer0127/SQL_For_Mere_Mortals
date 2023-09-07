-- Display for each product the product name and the total sales

USE SalesOrdersExample

SELECT
	Products.ProductName,
	FORMAT(SUM(Order_Details.QuotedPrice * Order_Details.QuantityOrdered), 'c') AS MoneyMadeFromProduct
FROM
	Products
	JOIN
	Order_Details
	ON Products.ProductNumber = Order_Details.ProductNumber
GROUP BY Products.ProductName