-- Display subjects with no faculty assigned

USE SchoolSchedulingExample

SELECT
	Subjects.SubjectID,
	Subjects.SubjectName
FROM 
	Subjects
	LEFT JOIN
	Faculty_Subjects
	ON Subjects.SubjectID = Faculty_Subjects.SubjectID
WHERE Faculty_Subjects.SubjectID IS NULL