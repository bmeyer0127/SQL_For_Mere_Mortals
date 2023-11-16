/*
	List the names of all our students, and order them by the cities they live in.
*/

SELECT
StudFirstName + ' ' + StudLastName AS StudName,
StudCity
FROM Students
ORDER BY StudCity;