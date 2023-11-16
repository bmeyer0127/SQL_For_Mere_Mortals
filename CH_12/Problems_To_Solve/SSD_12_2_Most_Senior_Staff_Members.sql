-- List the last name and first name of each staff member who has been with us since the earliest hire date

USE SchoolSchedulingExample

SELECT
	Staff.StfFirstName + ' ' + Staff.StfLastname AS StaffName
FROM
	Staff
WHERE
	Staff.DateHired = 
	(SELECT	
		MIN(Staff.DateHired)
	FROM
		Staff)