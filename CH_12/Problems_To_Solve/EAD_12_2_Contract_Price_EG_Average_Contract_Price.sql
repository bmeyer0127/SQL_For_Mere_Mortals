-- Show me the engagement numbers for all engagements that have a contract price
--	greater than or equal to the overall average contract price

USE EntertainmentAgencyExample

SELECT
	Engagements.EngagementNumber
FROM
	Engagements
WHERE
	Engagements.ContractPrice >= 
		(SELECT
			AVG(Engagements.ContractPrice)
		FROM
			Engagements)