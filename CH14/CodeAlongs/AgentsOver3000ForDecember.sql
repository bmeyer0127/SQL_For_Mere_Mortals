-- Which agents booked more than $3,000 worth of business in December 2017?

USE EntertainmentAgencyExample

SELECT
	Agents.AgtFirstName + ' ' + Agents.AgtLastName AS AgentName,
	FORMAT(SUM(Engagements.ContractPrice), 'c') AS TotalPriceForBooked
FROM
	Agents
	JOIN
	Engagements
	ON Agents.AgentID = Engagements.AgentID
WHERE
	Engagements.StartDate BETWEEN '2017-12-01' AND '2017-12-31'
GROUP BY
	Agents.AgtFirstName,
	Agents.AgtLastName
HAVING
	SUM(Engagements.ContractPrice) > 3000