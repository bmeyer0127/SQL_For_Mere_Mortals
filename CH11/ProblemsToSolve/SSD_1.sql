-- List all staff members and the count of classes each teaches

USE SchoolSchedulingExample

SELECT
	Staff.StfFirstName + ' ' + Staff.StfLastname AS StaffName,
	(SELECT 
		COUNT(Faculty_Classes.ClassID)
	FROM
		Faculty_Classes
	WHERE
		Faculty_Classes.StaffID = Staff.StaffID) AS ClassesCount
FROM
	Staff
