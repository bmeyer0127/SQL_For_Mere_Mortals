/*
	Show next year's tournament date for each tournament location
*/
USE BowlingLeagueExample
SELECT 
	TourneyDate,
	TourneyLocation
FROM 
	Tournaments
WHERE
	TourneyDate >= '01-01-2018'