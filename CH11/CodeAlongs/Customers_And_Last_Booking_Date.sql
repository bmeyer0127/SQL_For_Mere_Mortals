-- Dispaly all customers and the date of the last booking each made

USE EntertainmentAgencyExample

SELECT 
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	(SELECT
		MAX(Engagements.StartDate)
	FROM
		Engagements
	WHERE
		Engagements.CustomerID = Customers.CustomerID)AS LastBookingDate
FROM
	Customers