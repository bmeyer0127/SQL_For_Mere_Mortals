SELECT
BowlerLastName + ', ' + BowlerFirstName AS Bowler,
(BowlerAddress + ' ' + BowlerCity + ', ' + BowlerState + ' ' + BowlerZip) AS MailingAddress
FROM Bowlers
ORDER BY BowlerZip;