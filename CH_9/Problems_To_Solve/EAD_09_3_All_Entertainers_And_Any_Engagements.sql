-- List all entertainers and any engagements they have booked

USE EntertainmentAgencyExample

SELECT 
	Entertainers.EntertainerID,
	Entertainers.EntStageName,
	Engagements.EngagementNumber
FROM
	Entertainers
	LEFT JOIN
	Engagements
	ON Entertainers.EntertainerID = Engagements.EntertainerID