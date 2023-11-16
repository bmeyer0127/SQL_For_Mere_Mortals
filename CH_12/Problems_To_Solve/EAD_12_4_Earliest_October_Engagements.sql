-- Which engagements occur earliest in OCtober 2017?

USE EntertainmentAgencyExample

SELECT
	Engagements.EngagementNumber
FROM
	Engagements
WHERE
	Engagements.StartDate = 
	(SELECT	
		MIN(Engagements.StartDate)
	FROM
		Engagements
	WHERE
		Engagements.StartDate BETWEEN '2017-10-01' AND '2017-10-31')