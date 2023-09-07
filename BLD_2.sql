-- List all the bowlers who have a raw score that's less than all of the other bowlers on the same team

USE BowlingLeagueExample

SELECT DISTINCT
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS BowlerName
FROM
	Bowlers
	JOIN
	Bowler_Scores
	ON Bowlers.BowlerID = Bowler_Scores.BowlerID
WHERE
	Bowler_Scores.RawScore < ALL
		(SELECT
			BS2.RawScore
		FROM
			Bowler_Scores AS BS2
			JOIN
			Bowlers AS B2
			ON BS2.BowlerID = B2.BowlerID
		WHERE
			B2.BowlerID <> Bowlers.BowlerID AND
			B2.TeamID = Bowlers.TeamID)