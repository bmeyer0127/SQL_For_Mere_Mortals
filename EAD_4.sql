-- Display agents who haven't booked an entertainer

USE EntertainmentAgencyExample

SELECT
	Agents.AgtFirstName + ' ' + Agents.AgtLastName AS AgentName
FROM
	Agents
WHERE
	Agents.AgentID NOT IN
		(SELECT	
			Engagements.AgentID
		FROM
			Engagements)