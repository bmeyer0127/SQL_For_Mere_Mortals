-- Show me tournaments that haven't been played yet

USE BowlingLeagueExample
	
SELECT
	Tournaments.TourneyID,
	Tournaments.TourneyDate,
	Tournaments.TourneyLocation
FROM
	Tournaments
	LEFT JOIN
	Tourney_Matches
	ON Tournaments.TourneyID = Tourney_Matches.TourneyID
WHERE Tourney_Matches.TourneyID IS NULL