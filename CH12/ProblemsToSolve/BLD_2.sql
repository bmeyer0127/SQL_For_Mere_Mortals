-- Which locations hosted tournaments on the earliest tounament date?

USE BowlingLeagueExample

SELECT
	Tournaments.TourneyLocation
FROM
	Tournaments
WHERE
	Tournaments.TourneyDate = 
	(SELECT
		MIN(Tournaments.TourneyDate)
	FROM
		Tournaments)