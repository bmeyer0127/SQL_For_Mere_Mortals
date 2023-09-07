/*
	Give me the names of all our customers by city
*/

SELECT
CustFirstName + ' ' + CustLastName AS CustName,
CustCity
FROM Customers
ORDER BY CustCity;