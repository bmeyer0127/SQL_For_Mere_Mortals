-- List the customers who ordered a helmet together with the vendors who provide helmets

USE SalesOrdersExample

SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS Name,
	Products.ProductName,
	'Customer' AS RowID
FROM
	((Customers
	JOIN
	Orders
	ON Customers.CustomerID = Orders.CustomerID)
	JOIN
	Order_Details
	ON Orders.OrderNumber = Order_Details.OrderNumber)
	JOIN
	Products
	ON Order_Details.ProductNumber = Products.ProductNumber
WHERE
	Products.ProductName LIKE '%helmet%'

UNION

SELECT
	Vendors.VendName Name,
	Products.ProductName,
	'Vendor' AS RowID
FROM
	(Vendors
	JOIN
	Product_Vendors
	ON Vendors.VendorID = Product_Vendors.VendorID)
	JOIN
	Products
	ON Product_Vendors.ProductNumber = Products.ProductNumber
WHERE
	Products.ProductName LIKE '%helmet%'