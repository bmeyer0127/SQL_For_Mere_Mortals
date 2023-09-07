USE SchoolSchedulingExample
SELECT DISTINCT
	Subjects.SubjectName,
	Classes.WednesdaySchedule
FROM 
	Subjects
	JOIN
	Classes
	ON Subjects.SubjectID = Classes.SubjectID
WHERE Classes.WednesdaySchedule = 1