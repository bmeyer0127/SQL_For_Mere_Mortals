-- What is the largest handicap held by any bowler at the current time?

USE BowlingLeagueExample

SELECT
	MAX(Bowler_Scores.HandiCapScore - Bowler_Scores.RawScore) AS LargestHandiCap
FROM
	Bowler_Scores

-- Is not the correct answer in the book, that is 52, but I think it may be because
--	I don't understand bowling handicaps? Or I might just be stupid and using this 
--	incorrectly