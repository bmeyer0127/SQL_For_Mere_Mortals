-- Display the highest raw score for each bowler, but solve it using a subquery

USE BowlingLeagueExample

SELECT
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS BowlerName,
	(SELECT
		MAX(Bowler_Scores.RawScore)
	FROM
		Bowler_Scores
	WHERE
		Bowler_Scores.BowlerID = Bowlers.BowlerID) AS HighestRawScore
FROM
	Bowlers