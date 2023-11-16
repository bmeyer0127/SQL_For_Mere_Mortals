-- List employees and the customers for whom they booked an order
USE SalesOrdersExample
SELECT
	Orders.OrderNumber,
	EmpFirstName + ' ' + EmpLastName AS EmpName,
	CustFirstName + ' ' + CustLastName AS CustName
FROM
	(Employees
	JOIN
	Orders
	ON Employees.EmployeeID = Orders.EmployeeID)
	JOIN
	Customers
	ON Customers.CustomerID = Orders.CustomerID
ORDER BY EmpName