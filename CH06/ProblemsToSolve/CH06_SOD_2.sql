USE SalesOrdersExample
SELECT ProductName, FORMAT(RetailPrice, 'C') AS RetailPrice
FROM Products
WHERE RetailPrice >= 125
ORDER BY ProductName