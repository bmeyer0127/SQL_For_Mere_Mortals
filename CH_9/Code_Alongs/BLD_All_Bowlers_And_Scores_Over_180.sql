-- List all the bowlers and any games they bowled over 180
USE BowlingLeagueExample

SELECT
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS BowlerName,
	GoodBowlers.MatchID,
	GoodBowlers.GameNumber,
	GoodBowlers.RawScore
FROM
	Bowlers
	LEFT JOIN
	(SELECT
		Bowler_Scores.MatchID,
		Bowler_Scores.GameNumber,
		Bowler_Scores.RawScore,
		Bowler_Scores.BowlerID
	FROM Bowler_Scores
	WHERE Bowler_Scores.RawScore > 180) AS GoodBowlers
	ON Bowlers.BowlerID = GoodBowlers.BowlerID