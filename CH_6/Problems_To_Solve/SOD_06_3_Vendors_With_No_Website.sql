-- Which vendors do we work with that don't have a website?

USE SalesOrdersExample

SELECT VendName, VendWebPage
FROM Vendors
WHERE VendWebPage IS NULL