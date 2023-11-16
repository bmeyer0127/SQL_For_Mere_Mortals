-- List all vendors and the count of products sold by each
--	CHALLENGE: Solve by using a subquery

USE SalesOrdersExample

SELECT 
	Vendors.VendName,
	(SELECT
		COUNT(PV.ProductNumber)
	FROM
		Product_Vendors AS PV
	WHERE
		PV.VendorID = Vendors.VendorID) AS NumberOfProductsSold
FROM
	Vendors