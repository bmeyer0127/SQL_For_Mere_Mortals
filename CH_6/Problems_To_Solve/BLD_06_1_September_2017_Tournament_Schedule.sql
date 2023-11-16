-- Give me a list of the tournaments held during September 2017

USE BowlingLeagueExample
SELECT 
	TourneyID,
	TourneyDate
FROM Tournaments
WHERE TourneyDate BETWEEN '2017-09-01' AND '2017-09-30'