-- What was the total amount for order number 8?

USE SalesOrdersExample

SELECT
	FORMAT(SUM(Order_Details.QuotedPrice * Order_Details.QuantityOrdered), 'c') AS TotalPrice
FROM
	Order_Details
WHERE
	Order_Details.OrderNumber = 8