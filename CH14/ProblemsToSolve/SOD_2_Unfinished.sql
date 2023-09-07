-- Display for each product the product name and the total sales that
--	is greater than the average of sales for all products in that category

USE SalesOrdersExample

SELECT
	Products.CategoryID,
	Products.ProductName,
	SUM(Order_Details.QuotedPrice * Order_Details.QuantityOrdered) AS TotalSalesForItem
FROM
	Products
	JOIN
	Order_Details
	ON Products.ProductNumber = Order_Details.ProductNumber
WHERE
	Products.CategoryID = 
	(SELECT	
		P.CategoryID
	FROM
		Products AS P)
GROUP BY 
	Products.ProductName,
	Products.CategoryID
HAVING
	SUM(Order_Details.QuotedPrice * Order_Details.QuantityOrdered) > 
	AVG(Order_Details.QuotedPrice * Order_Details.QuantityOrdered)