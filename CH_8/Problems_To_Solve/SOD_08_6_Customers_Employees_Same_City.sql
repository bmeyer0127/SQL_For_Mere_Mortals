-- Show me customers and employees who live in the same city
USE SalesOrdersExample
SELECT
	Customers.CustCity,
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	Employees.EmpFirstName + ' ' + Employees.EmpLastName AS EmpName
FROM 
	Customers
	JOIN
	Employees
	ON Customers.CustCity = Employees.EmpCity
WHERE Customers.CustState = Employees.EmpState