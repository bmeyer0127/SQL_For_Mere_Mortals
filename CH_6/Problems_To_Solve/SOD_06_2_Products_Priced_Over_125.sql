-- Show me and alphabetized list of products with a retail
--	price of $125 or more

USE SalesOrdersExample

SELECT ProductName, FORMAT(RetailPrice, 'C') AS RetailPrice
FROM Products
WHERE RetailPrice >= 125
ORDER BY ProductName