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