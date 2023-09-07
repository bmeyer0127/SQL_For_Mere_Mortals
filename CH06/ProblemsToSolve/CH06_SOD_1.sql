USE SalesOrdersExample
SELECT VendName, VendCity
FROM Vendors
WHERE VendCity in ('Ballard', 'Bellevue', 'Redmond')