SELECT
BowlerID,
MatchID,
GameNumber,
RawScore,
HandiCapScore,
(HandiCapScore - RawScore) AS PointDifference
FROM Bowler_Scores
ORDER BY
BowlerID, MatchID, GameNumber;