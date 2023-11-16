-- Find the entertainers who played for customers Berg or Hallmark

USE EntertainmentAgencyExample

SELECT
	Entertainers.EntStageName
FROM
	Entertainers
WHERE
	Entertainers.EntertainerID IN
		(SELECT	
			Engagements.EntertainerID
		FROM
			Engagements
		WHERE
			Engagements.CustomerID IN
				(SELECT	
					Customers.CustomerID
				FROM
					Customers
				WHERE
					Customers.CustLastName IN
						('Berg', 'Hallmark')))
