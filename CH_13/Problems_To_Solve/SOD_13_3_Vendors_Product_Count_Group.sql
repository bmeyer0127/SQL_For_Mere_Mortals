-- List all vendors and the count of products sold by each

USE SalesOrdersExample

SELECT
	Vendors.VendName,
	COUNT(Product_Vendors.ProductNumber) AS NumberOfProductsSold
FROM
	Vendors
	JOIN
	Product_Vendors
	ON Vendors.VendorID = Product_Vendors.VendorID
GROUP BY Vendors.VendName