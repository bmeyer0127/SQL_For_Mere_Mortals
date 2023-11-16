-- Display agents who haven't booked and entertainer

USE EntertainmentAgencyExample

SELECT
	Agents.AgtFirstName + ' ' + Agents.AgtLastName AS AgentNames
FROM
	Agents
	LEFT JOIN
	Engagements
	ON Agents.AgentID = Engagements.AgentID
WHERE Engagements.AgentID IS NULL