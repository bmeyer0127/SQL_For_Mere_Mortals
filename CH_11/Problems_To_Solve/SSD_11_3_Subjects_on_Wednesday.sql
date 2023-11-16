-- List the subjects taught on Wednesday

USE SchoolSchedulingExample

SELECT
	Subjects.SubjectName
FROM
	Subjects
WHERE
	Subjects.SubjectID IN
		(SELECT
			Classes.SubjectID
		FROM
			Classes
		WHERE
			Classes.WednesdaySchedule = 1) 
