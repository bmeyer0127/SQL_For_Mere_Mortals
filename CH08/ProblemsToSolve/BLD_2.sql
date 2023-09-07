-- Display the bowlers, the matches they played in, and the bowler game scores
USE BowlingLeagueExample
SELECT
	Bowler_Scores.MatchID,
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS BowlerName,
	Teams.TeamName,
	Bowler_Scores.RawScore,
	Bowler_Scores.HandiCapScore
FROM 
	(Bowlers
	JOIN
	Teams
	ON Teams.TeamID = Bowlers.TeamID)
	JOIN
	Bowler_Scores
	ON Bowlers.BowlerID = Bowler_Scores.BowlerID