-- List for each customer and order date the customer's full name and 
--	the total cost of items ordered that is greater than $1,000

USE SalesOrdersExample

SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	Orders.OrderDate,
	SUM(Order_Details.QuotedPrice * Order_Details.QuantityOrdered) AS TotalCost
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
HAVING
	SUM(Order_Details.QuotedPrice * Order_Details.QuantityOrdered) > 1000
ORDER BY
	Customers.CustFirstName,
	Customers.CustLastName,
	Orders.OrderDate