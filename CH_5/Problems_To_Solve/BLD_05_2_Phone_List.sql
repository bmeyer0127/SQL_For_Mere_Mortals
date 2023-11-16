/*
	List the name and phone number for each member of the league
*/

SELECT
BowlerFirstName + ' ' + BowlerLastName AS BowlerName,
BowlerPhoneNumber
FROM Bowlers;