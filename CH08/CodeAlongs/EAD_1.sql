USE EntertainmentAgencyExample
SELECT
	EntStageName,
	StartDate,
	EndDate,
	CAST(DATEDIFF(DAY, StartDate, EndDate) AS VARCHAR) + ' days' AS ContractLength,
	FORMAT(ContractPrice, 'C') AS ContractPrice
FROM 
	Entertainers
	JOIN
	Engagements
	ON
	Entertainers.EntertainerID = Engagements.EntertainerID
ORDER BY EntStageName