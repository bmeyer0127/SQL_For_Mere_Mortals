-- List each staff member and the count of classes each in scheduled to teach
--	CHALLENGE: Solve using a subquery

USE SchoolSchedulingExample

SELECT
	Staff.StfFirstName + ' ' + Staff.StfLastname AS StaffName,
	(SELECT	
		COUNT(FC.ClassID)
	FROM
		Faculty_Classes AS FC
	WHERE
		FC.StaffID = Staff.StaffID) AS NumberOfClasses
FROM
	Staff

-- Second verse, same as the first