-- Show me for each customer the customer full name, the customer full address, 
--	the latest contract date for the customer, and the total price of all 
--	the contracts

USE EntertainmentAgencyExample
	
SELECT
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName,
	Customers.CustStreetAddress + ' ' + Customers.CustCity + ', ' +
		Customers.CustState + ' ' + Customers.CustZipCode AS FullAddress,
	MAX(Engagements.StartDate) AS LatestContract,
	SUM(Engagements.ContractPrice) AS TotalContractPrice
FROM
	Customers
	JOIN
	Engagements
	ON Customers.CustomerID = Engagements.CustomerID
GROUP BY
	Customers.CustFirstName, 
	Customers.CustLastName,
	Customers.CustStreetAddress,
	Customers.CustCity,
	Customers.CustState,
	Customers.CustZipCode