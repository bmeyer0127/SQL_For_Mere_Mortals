-- List customers who have booked entertainers who play country or country rock

USE EntertainmentAgencyExample

SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName
FROM
	Customers
WHERE
	Customers.CustomerID IN
		(SELECT DISTINCT
			Engagements.CustomerID
		FROM
			Engagements
		WHERE
			Engagements.EntertainerID IN
			(SELECT
				Entertainer_Styles.EntertainerID
			FROM
				Entertainer_Styles
			WHERE
				Entertainer_Styles.StyleID IN ('11', '6')))