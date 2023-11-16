-- Display students who have never withdrawn from a class

USE SchoolSchedulingExample

SELECT 
	Students.StudFirstName + ' ' + Students.StudLastName AS StudName
FROM
	Students
	LEFT JOIN
	(SELECT
		Student_Schedules.StudentID,
		Student_Schedules.ClassStatus
	FROM
		Student_Schedules
	WHERE Student_Schedules.ClassStatus = 3)
	AS Withdrawn
	ON Students.StudentID = Withdrawn.StudentID
WHERE Withdrawn.StudentID IS NULL