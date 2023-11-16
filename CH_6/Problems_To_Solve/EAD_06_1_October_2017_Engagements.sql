-- Let me see a list of all engagements that occurred
--	during October 2017

USE EntertainmentAgencyExample

SELECT 
	EngagementNumber, 
	StartDate, 
	EndDate
FROM 
	Engagements
WHERE 
	StartDate <= '2017-10-31' 
	AND EndDate >= '2017-10-01'