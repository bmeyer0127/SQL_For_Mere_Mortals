-- Display for each bowler the bowler name and the average of the bowler's raw game scores

USE BowlingLeagueExample

SELECT
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS BowlerName,
	AVG(CAST(Bowler_Scores.RawScore AS FLOAT)) AS AvgRawScore
FROM
	Bowlers
	JOIN
	Bowler_Scores
	ON Bowlers.BowlerID = Bowler_Scores.BowlerID
GROUP BY 
	Bowlers.BowlerFirstName,
	Bowlers.BowlerLastName