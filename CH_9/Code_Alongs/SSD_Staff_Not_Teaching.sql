-- List the faculty members not teaching a class

USE SchoolSchedulingExample

SELECT 
	Staff.StfFirstName + ' ' + Staff.StfLastname AS StfName
FROM
	Staff
	LEFT JOIN
	Faculty_Classes
	ON Staff.StaffID = Faculty_Classes.StaffID
WHERE Faculty_Classes.ClassID IS NULL