-- How many of our entertainers are based in Bellevue?

SELECT
	COUNT(Entertainers.EntertainerID) AS BellevueDwellers
FROM
	Entertainers
WHERE
	Entertainers.EntCity = 'Bellevue'