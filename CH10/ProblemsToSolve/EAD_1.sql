-- Display a combined list of customers and entertainers

USE EntertainmentAgencyExample

SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS Names
FROM
	Customers

UNION ALL

SELECT
	Entertainers.EntStageName
FROM
	Entertainers