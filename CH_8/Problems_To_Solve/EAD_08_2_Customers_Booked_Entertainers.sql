-- List the customers and the entertainers they booked
USE EntertainmentAgencyExample
SELECT DISTINCT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	Entertainers.EntStageName
FROM
	(Customers
	JOIN
	Engagements
	ON Customers.CustomerID = Engagements.CustomerID)
	JOIN
	Entertainers
	ON Entertainers.EntertainerID = Engagements.EntertainerID