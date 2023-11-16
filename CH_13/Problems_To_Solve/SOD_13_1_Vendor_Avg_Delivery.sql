-- Show me each vendor and the average by vendor of the number 
--	of days to deliver products

USE SalesOrdersExample

SELECT
	Vendors.VendName,
	AVG(Product_Vendors.DaysToDeliver) AS AverageDaysToDeliver
FROM
	Vendors
	JOIN
	Product_Vendors
	ON Vendors.VendorID = Product_Vendors.VendorID
GROUP BY
	Vendors.VendName