-- List the engagement number and contract price of all engagements that have a contact
--	price larger than the total amount of all contract prices for the entire month
--	of September 2017

USE EntertainmentAgencyExample

SELECT
	Engagements.EngagementNumber,
	Engagements.ContractPrice
FROM
	Engagements
WHERE
	Engagements.ContractPrice > 
		(SELECT
			SUM(Engagements.ContractPrice)
		FROM
			Engagements
		WHERE
			Engagements.StartDate BETWEEN '2017-09-01' AND '2017-09-30')