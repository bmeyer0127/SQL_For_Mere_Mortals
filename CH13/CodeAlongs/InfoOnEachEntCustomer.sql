-- Show me for each customer the customer first and last names, the
--	count of contracts for the customers, the total price of all the contracts,
--	the lowest contract price, the highest contract price, and the average
--	price of all the contracts.

USE EntertainmentAgencyExample

SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	COUNT(Engagements.EngagementNumber) AS NumOfEngagements,
	FORMAT(SUM(Engagements.ContractPrice), 'c') AS TotalPriceOfContracts,
	FORMAT(MIN(Engagements.ContractPrice), 'c') AS MinPriceOfContracts,
	FORMAT(MAX(Engagements.ContractPrice), 'c') AS MaxPriceOfContracts,
	FORMAT(AVG(Engagements.ContractPrice), 'c') AS AveragePriceOfContracts
FROM
	Customers
	LEFT JOIN
	Engagements
	ON Customers.CustomerID = Engagements.CustomerID
GROUP BY Customers.CustFirstName, Customers.CustLastName