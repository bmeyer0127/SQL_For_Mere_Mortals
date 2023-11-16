-- Give me the names of all vendors based in Ballard, Bellevue, and Redmond

USE SalesOrdersExample

SELECT VendName, VendCity
FROM Vendors
WHERE VendCity in ('Ballard', 'Bellevue', 'Redmond')