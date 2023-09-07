-- Display all orders, the products in each order, and the amount owed for each product, in order number sequence
USE SalesOrdersExample
SELECT 
	Order_Details.OrderNumber,
	Products.ProductName,
	Order_Details.QuantityOrdered,
	FORMAT(Order_Details.QuantityOrdered * Products.RetailPrice, 'C') AS TotalPriceForProducts
FROM
	Order_Details
	JOIN
	Products
	ON Order_Details.ProductNumber = Products.ProductNumber
ORDER BY OrderNumber