-- Display all tournaments and any matches that have been played

USE BowlingLeagueExample

SELECT
	Tournaments.TourneyID,
	Tournaments.TourneyLocation,
	Tournaments.TourneyDate,
	Games.MatchID,
	Games.GameNumber,
	Games.WinningTeamID
FROM
	Tournaments
	LEFT JOIN
	(SELECT
		Tourney_Matches.MatchID,
		Tourney_Matches.TourneyID,
		Match_Games.GameNumber,
		Match_Games.WinningTeamID
	FROM
		Tourney_Matches
		JOIN
		Match_Games
		ON Tourney_Matches.MatchID = Match_Games.MatchID) AS Games
	ON Tournaments.TourneyID = Games.TourneyID