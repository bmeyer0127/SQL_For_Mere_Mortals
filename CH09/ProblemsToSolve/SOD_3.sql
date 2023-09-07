-- List all the products and the dates for any orders

USE SalesOrdersExample

SELECT DISTINCT
	Orders.OrderNumber,
	Products.ProductNumber,
	Products.ProductName,
	Orders.OrderDate,
	Orders.ShipDate
FROM
	Products
	LEFT JOIN
	(Orders
	JOIN
	Order_Details
	ON Orders.OrderNumber = Order_Details.OrderNumber)
	ON Order_Details.ProductNumber = Products.ProductNumber
ORDER BY Products.ProductNumber, Orders.OrderDate

-- So the answer did not include rows for the same product purchased on the same day
	-- but purchased by a different person thus, different order number. Feels wrong and 
	-- sussy