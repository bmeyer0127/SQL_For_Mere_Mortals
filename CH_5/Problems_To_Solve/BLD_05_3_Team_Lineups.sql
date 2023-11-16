/*
	Give me a listing of each team's lineup
*/

SELECT 
TeamID,
BowlerFirstName + ' ' + BowlerLastName AS BowlerName
FROM Bowlers
ORDER BY TeamID;