USE BowlingLeagueExample
SELECT 
	TourneyID,
	TourneyDate,
	TourneyLocation
FROM Tournaments
WHERE TourneyLocation IN ('Bolero Lanes', 'Red Rooster Lanes', 'Thunderbird Lanes')
ORDER BY TourneyLocation