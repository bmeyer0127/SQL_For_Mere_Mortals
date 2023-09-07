-- List the bowling teams and all the team members
USE BowlingLeagueExample
SELECT
	Teams.TeamName,
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS BowlerName
FROM 
	Teams
	JOIN
	Bowlers 
	ON Teams.TeamID = Bowlers.TeamID