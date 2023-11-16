-- Display customers who have no rales rep (employees) in the same zip code

USE SalesOrdersExample

SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	Customers.CustZipCode
FROM
	Customers
	LEFT JOIN
	Employees
	ON Customers.CustZipCode = Employees.EmpZipCode
WHERE Employees.EmpZipCode IS NULL