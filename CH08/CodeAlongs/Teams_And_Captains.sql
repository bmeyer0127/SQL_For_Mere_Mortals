USE BowlingLeagueExample
SELECT
	Teams.TeamName,
	Bowlers.BowlerFirstName + ' ' + Bowlers.BowlerLastName AS NameOfCaptain
FROM 
	Teams
	JOIN
	Bowlers
	ON Teams.CaptainID = Bowlers.BowlerID