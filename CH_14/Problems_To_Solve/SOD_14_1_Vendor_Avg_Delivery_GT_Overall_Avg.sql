-- Show me each vendor and the average by vendor of the number of days
--	to deliver products that are greater than the average delivery
--	days for all vendors

USE SalesOrdersExample

SELECT
	Vendors.VendName,
	AVG(CAST(Product_Vendors.DaysToDeliver AS FLOAT)) AS DaysToDeliver
FROM
	Vendors
	JOIN
	Product_Vendors
	ON Vendors.VendorID = Product_Vendors.VendorID
GROUP BY
	Vendors.VendName
HAVING
	AVG(Product_Vendors.DaysToDeliver) > 
	(SELECT	
		AVG(PV.DaysToDeliver)
	FROM
		Product_Vendors AS PV)