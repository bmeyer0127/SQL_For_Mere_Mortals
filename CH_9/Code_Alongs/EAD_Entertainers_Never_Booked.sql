-- List entertainers who have never been booked
USE EntertainmentAgencyExample
SELECT
	Entertainers.EntStageName
FROM
	Entertainers
	LEFT JOIN
	Engagements
	ON Engagements.EntertainerID = Entertainers.EntertainerID
WHERE Engagements.EngagementNumber IS NULL