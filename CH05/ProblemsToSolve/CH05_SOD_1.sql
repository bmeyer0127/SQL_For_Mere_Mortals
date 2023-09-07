/*
	"What if we adjusted each product price by reducing it 5%?"
*/

SELECT 
ProductNumber, 
ProductName, 
FORMAT(RetailPrice, 'C') AS RetailPrice, 
FORMAT((RetailPrice * 0.95), 'C') AS FivePercentReducedPrice
FROM Products