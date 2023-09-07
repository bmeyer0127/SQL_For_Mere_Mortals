-- Display students enrolled in a class on Tuesday

USE SchoolSchedulingExample

SELECT 
	Students.StudFirstName + ' ' + Students.StudLastName AS StudentNames
FROM
	Students
WHERE
	Students.StudentID IN
	(SELECT
		Student_Schedules.StudentID
	FROM
		Student_Schedules
	WHERE	
		Student_Schedules.ClassID IN
	(SELECT 
		Classes.ClassID
	FROM
		Classes
	WHERE Classes.TuesdaySchedule = 1))