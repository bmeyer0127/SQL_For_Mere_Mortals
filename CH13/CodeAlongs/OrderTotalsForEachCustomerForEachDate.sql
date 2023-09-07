-- List for each customer and order date the customer full name
--	and the total cost of items ordered on each date

USE SalesOrdersExample

SELECT
	Orders.OrderDate,
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	FORMAT(SUM(Order_Details.QuotedPrice * QuantityOrdered), 'c') AS TotalCost
FROM
	(Customers
	JOIN
	Orders
	ON Customers.CustomerID = Orders.CustomerID)
	JOIN
	Order_Details
	ON Orders.OrderNumber = Order_Details.OrderNumber
GROUP BY 
	Customers.CustFirstName,
	Customers.CustLastName,
	Orders.OrderDate
ORDER BY
	Customers.CustFirstName,
	Customers.CustLastName,
	Orders.OrderDate