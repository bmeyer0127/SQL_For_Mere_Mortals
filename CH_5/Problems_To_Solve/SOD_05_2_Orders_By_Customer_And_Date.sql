/*
	Show me a list of orders made by each customer in descending date order
*/

SELECT 
	OrderDate,
	OrderNumber,
	CustomerID
FROM
	Orders
ORDER BY 
	OrderDate DESC