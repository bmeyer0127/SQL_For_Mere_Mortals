-- Display all subjects and the count of classes for each subject on Monday

USE SchoolSchedulingExample

SELECT
	Subjects.SubjectName,
	(SELECT	
		COUNT(Classes.MondaySchedule)
	FROM
		Classes
	WHERE
		Classes.MondaySchedule = 1 AND
		Classes.SubjectID = Subjects.SubjectID) AS MondayCount
FROM Subjects