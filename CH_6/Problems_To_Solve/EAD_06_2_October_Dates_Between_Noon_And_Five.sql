-- Show me any engagements in October 2017 that start between 
--	noon and 5p

USE EntertainmentAgencyExample

SELECT
	EngagementNumber,
	StartDate,
	EndDate,
	StartTime
FROM Engagements
WHERE 
	(StartDate <= '2017-10-31' AND EndDate >= '2017-10-01')
AND
	(StartTime BETWEEN '12:00:00' AND '17:00:00')