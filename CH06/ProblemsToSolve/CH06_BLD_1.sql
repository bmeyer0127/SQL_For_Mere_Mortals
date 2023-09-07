USE BowlingLeagueExample
SELECT 
	TourneyID,
	TourneyDate
FROM Tournaments
WHERE TourneyDate BETWEEN '2017-09-01' AND '2017-09-31'