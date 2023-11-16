-- List the bowlers who live on the Eastside (Bellevue, Bothell, Dunvall,
--	Redmond, and Woodinville) and who are on teams 5, 6, 7, or 8

USE BowlingLeagueExample
SELECT
	BowlerFirstName  + ' ' + BowlerLastName AS BowlerName,
	BowlerCity,
	TeamID
FROM Bowlers
WHERE
	(BowlerCity IN ('Bellevue', 'Bothell', 'Duvall', 'Redmond', 'Woodinville'))
AND
	(TeamID BETWEEN '5' AND '8')