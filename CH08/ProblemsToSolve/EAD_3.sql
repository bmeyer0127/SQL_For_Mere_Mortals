-- Find the agents and entertainers who live in the same postal code
USE EntertainmentAgencyExample
SELECT
	Agents.AgtFirstName + ' ' + Agents.AgtLastName AS AgtName,
	Agents.AgtZipCode,
	Entertainers.EntStageName,
	Entertainers.EntZipCode
FROM
	Agents
	JOIN
	Entertainers
	ON Agents.AgtZipCode = Entertainers.EntZipCode
