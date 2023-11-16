-- Show me the vendors and the products they supply to us for products that cost less than $100
USE SalesOrdersExample
SELECT 
	Vendors.VendName,
	Products.ProductName,
	FORMAT(Product_Vendors.WholesalePrice, 'C') AS WholesalePrice
FROM 
	(Vendors
	JOIN
	Product_Vendors
	ON Vendors.VendorID = Product_Vendors.VendorID)
	JOIN
	Products
	ON Products.ProductNumber = Product_Vendors.ProductNumber
WHERE
	WholesalePrice < 100