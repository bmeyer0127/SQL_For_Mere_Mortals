-- Calculate the current average and handicap for each bowler

-- Handicap is 90% of (200 - RawAverage)

USE BowlingLeagueExample

SELECT
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS BowlerName,
	ROUND(AVG(CAST(Bowler_Scores.RawScore AS FLOAT)), 0) AS RawAverage,
	ROUND(((200 - AVG(CAST(Bowler_Scores.RawScore AS FLOAT))) * .9), 0) AS HandicapScore
FROM
	Bowlers
	JOIN
	Bowler_Scores
	ON Bowlers.BowlerID = Bowler_Scores.BowlerID
GROUP BY
	Bowlers.BowlerFirstName,
	Bowlers.BowlerLastName
ORDER BY Bowlers.BowlerLastName