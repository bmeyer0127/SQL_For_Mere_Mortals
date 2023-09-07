-- Show me customers and employees who have the same last name
USE SalesOrdersExample
SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	Employees.EmpFirstName + ' ' + Employees.EmpLastName AS EmpName
FROM 
	Employees
	JOIN
	Customers
	ON Customers.CustLastName = Employees.EmpLastName