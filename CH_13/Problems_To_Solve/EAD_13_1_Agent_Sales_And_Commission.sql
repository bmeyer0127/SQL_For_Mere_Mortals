-- Show each agent's name, the sum of the contract price for the
--	engagements booked, and the agent's total commission

USE EntertainmentAgencyExample

SELECT
	Agents.AgtFirstName + ' ' + Agents.AgtLastName AS AgentName,
	FORMAT(SUM(Engagements.ContractPrice), 'c') AS TotalContractIncome,
	FORMAT(SUM(Engagements.ContractPrice) * Agents.CommissionRate, 'c') AS TotalCommission
FROM
	Agents
	JOIN
	Engagements
	ON Agents.AgentID = Engagements.AgentID
GROUP BY
	Agents.AgtFirstName,
	Agents.AgtLastName,
	Agents.CommissionRate