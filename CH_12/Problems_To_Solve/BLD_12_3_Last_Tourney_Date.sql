-- What is the last tournament date we have on our schedule?

USE BowlingLeagueExample

SELECT
	MAX(Tournaments.TourneyDate) LastTourneyDate
FROM
	Tournaments