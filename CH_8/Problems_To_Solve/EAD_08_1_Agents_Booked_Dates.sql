-- Display agents and the engagement dates they booked, sorted by booking start date
USE EntertainmentAgencyExample
SELECT 
	Agents.AgtFirstName + ' ' + Agents.AgtLastName AS AgtName,
	Engagements.StartDate,
	Engagements.EndDate
FROM
	Agents
	JOIN
	Engagements
	ON Agents.AgentID = Engagements.AgentID
ORDER BY Engagements.StartDate