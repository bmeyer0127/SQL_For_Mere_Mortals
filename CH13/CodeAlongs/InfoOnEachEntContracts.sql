-- Show me for each entertainment group the group name, the count of contracts
--	for the group, the total price of all the contracts, the lowest contract
--	price, the highest contract price, and the average price of all the contracts

USE EntertainmentAgencyExample

SELECT
	Entertainers.EntStageName,
	COUNT(Engagements.EngagementNumber) AS NumberOfEngagements,
	FORMAT(SUM(Engagements.ContractPrice), 'c') AS TotalPriceOfContracts,
	FORMAT(MIN(Engagements.ContractPrice), 'c') AS LowestPrice,
	FORMAT(MAX(Engagements.ContractPrice), 'c') AS HighestPrice,
	FORMAT(AVG(Engagements.ContractPrice), 'c') AS AveragePrice
FROM
	Entertainers
	LEFT JOIN
	Engagements
	ON Entertainers.EntertainerID = Engagements.EntertainerID
GROUP BY Entertainers.EntStageName