USE SchoolSchedulingExample
SELECT 
	SubjectID,
	SubjectName,
	SubjectCode
FROM Subjects
WHERE SubjectCode LIKE 'MUS%'