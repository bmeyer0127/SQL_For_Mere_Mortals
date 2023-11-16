-- What are the tournament schedules for Bolero, Red Rooster,
--	and Thunderbird Lanes?

USE BowlingLeagueExample

SELECT 
	TourneyID,
	TourneyDate,
	TourneyLocation
FROM 
	Tournaments
WHERE 
	TourneyLocation IN ('Bolero Lanes', 'Red Rooster Lanes', 'Thunderbird Lanes')
ORDER BY 
	TourneyLocation