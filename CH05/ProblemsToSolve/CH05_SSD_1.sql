/*
	Give me a list of staff members, and show them in descending order of salary
*/

SELECT
StfFirstName + ' ' + StfLastname AS StfName,
FORMAT(salary, 'C') AS salary
FROM Staff
ORDER BY salary DESC;