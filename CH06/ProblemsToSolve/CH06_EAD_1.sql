USE EntertainmentAgencyExample
SELECT EngagementNumber, StartDate, EndDate
FROM Engagements
WHERE StartDate <= '2017-10-31' 
AND EndDate >= '2017-10-01'