-- Show me all entertainers and the count of each entertainer's engagements

USE EntertainmentAgencyExample

SELECT
	Entertainers.EntStageName,
	(SELECT 
		COUNT(Engagements.EngagementNumber)
	FROM
		Engagements
	WHERE
	Engagements.EntertainerID = Entertainers.EntertainerID) AS NumberOfEngagements
FROM
	Entertainers