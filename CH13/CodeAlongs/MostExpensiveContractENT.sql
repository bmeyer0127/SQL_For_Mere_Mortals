-- Display the engagement contract whose price is greater than the sum of 
--	all contracts for any other customer

USE EntertainmentAgencyExample

SELECT 
	Engagements.EngagementNumber,
	Engagements.CustomerID,
	FORMAT(Engagements.ContractPrice, 'c') AS ContractPrice
FROM
	Engagements
WHERE
	Engagements.ContractPrice > ALL
	(SELECT	
		SUM(E2.ContractPrice)
	FROM
		Engagements AS E2
	WHERE
		Engagements.CustomerID <> E2.CustomerID
	GROUP BY E2.CustomerID)