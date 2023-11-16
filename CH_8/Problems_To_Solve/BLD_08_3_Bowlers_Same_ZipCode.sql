-- Find the bowlers who live in the same ZIP Code

USE BowlingLeagueExample
SELECT 
	FirstBowler.BowlerName,
	FirstBowler.BowlerZip,
	SecondBowler.BowlerName
FROM
	(SELECT DISTINCT
		Bowlers.BowlerLastName + ', ' + Bowlers.BowlerFirstName AS BowlerName,
		Bowlers.BowlerID,
		Bowlers.BowlerZip
	FROM
		Bowlers) AS FirstBowler
	JOIN
	(SELECT DISTINCT
		Bowlers.BowlerLastName + ', ' + Bowlers.BowlerFirstName AS BowlerName,
		Bowlers.BowlerID,
		Bowlers.BowlerZip
	FROM
		Bowlers) AS SecondBowler ON SecondBowler.BowlerZip = FirstBowler.BowlerZip
	WHERE FirstBowler.BowlerID <> SecondBowler.BowlerID