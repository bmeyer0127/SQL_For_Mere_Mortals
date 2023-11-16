-- List all the tournaments, the tournament matches, and the game results
USE BowlingLeagueExample
SELECT
	Tournaments.TourneyID,
	Tournaments.TourneyLocation,
	Tournaments.TourneyDate,
	Tourney_Matches.MatchID,
	Teams.TeamName AS WinningTeam
FROM 
	(((Tournaments
	JOIN
	Tourney_Matches
	ON Tournaments.TourneyID = Tourney_Matches.TourneyID)
	JOIN
	Match_Games
	ON Match_Games.MatchID = Tourney_Matches.MatchID)
	JOIN
	Teams
	ON Teams.TeamID = Match_Games.WinningTeamID)
ORDER BY TourneyID