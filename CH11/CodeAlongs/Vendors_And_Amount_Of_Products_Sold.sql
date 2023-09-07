-- List vendors and a count of the products they sell to us

USE SalesOrdersExample

SELECT
	Vendors.VendName,
	(SELECT 
		COUNT(*)
	FROM
		Product_Vendors
	WHERE
		Product_Vendors.VendorID = Vendors.VendorID) AS VendProductCount
FROM
	Vendors