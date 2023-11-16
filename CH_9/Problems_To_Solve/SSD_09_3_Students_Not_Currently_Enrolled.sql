-- List students not currently enrolled in any classes

USE SchoolSchedulingExample

SELECT DISTINCT
	Students.StudFirstName + ' ' + Students.StudLastName AS StudName
FROM
	Students
	LEFT JOIN
	(SELECT
		Student_Schedules.ClassStatus,
		Student_Schedules.StudentID
	FROM
		Student_Schedules
	WHERE Student_Schedules.ClassStatus LIKE 1) AS Enrolled
	ON Students.StudentID = Enrolled.StudentID
	WHERE Enrolled.StudentID IS NULL