-- Display matches with no game data

USE BowlingLeagueExample

SELECT 
	Tourney_Matches.MatchID,
	Tourney_Matches.TourneyID
FROM
	Tourney_Matches
	LEFT JOIN
	Match_Games
	ON Tourney_Matches.MatchID = Match_Games.MatchID
WHERE Match_Games.MatchID IS NULL