-- Show me which staff members use a post office box as their address

USE SchoolSchedulingExample

SELECT 
	StfFirstName + ' ' + StfLastname AS StfName, 
	StfStreetAddress
FROM Staff
WHERE StfStreetAddress LIKE '%box%'