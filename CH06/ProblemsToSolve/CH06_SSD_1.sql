USE SchoolSchedulingExample
SELECT 
	StfFirstName + ' ' + StfLastname AS StfName, 
	StfStreetAddress
FROM Staff
WHERE StfStreetAddress LIKE '%box%'