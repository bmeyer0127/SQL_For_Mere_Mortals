-- Show me classes that have no students enrolled

USE SchoolSchedulingExample

SELECT 
	Classes.ClassID
FROM
	Classes
	LEFT JOIN 
	(SELECT
		Student_Schedules.ClassID,
		Student_Schedules.ClassStatus
	FROM
		Student_Schedules
	WHERE Student_Schedules.ClassStatus = 1) AS Enrolled
	ON Classes.ClassID = Enrolled.ClassID
WHERE
	Enrolled.ClassID IS NULL