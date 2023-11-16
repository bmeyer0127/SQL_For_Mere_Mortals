-- What was the date of out most recent order?

USE SalesOrdersExample

SELECT
	MAX(Orders.OrderDate) AS MostRecentOrder
FROM
	Orders