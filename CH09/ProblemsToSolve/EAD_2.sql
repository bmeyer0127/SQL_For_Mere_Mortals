-- List customers with no bookings

USE EntertainmentAgencyExample

SELECT
	Customers.CustomerID,
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName
FROM
	Customers
	LEFT JOIN
	Engagements
	ON Customers.CustomerID = Engagements.CustomerID
WHERE Engagements.CustomerID IS NULL