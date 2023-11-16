-- Show me all the bowlers and a count of games each bowled

USE BowlingLeagueExample

SELECT
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS BowlerName,
	(SELECT
		COUNT(Bowler_Scores.MatchID)
	FROM
		Bowler_Scores
	WHERE
		Bowler_Scores.BowlerID = Bowlers.BowlerID) AS GamesBowled
FROM
	Bowlers