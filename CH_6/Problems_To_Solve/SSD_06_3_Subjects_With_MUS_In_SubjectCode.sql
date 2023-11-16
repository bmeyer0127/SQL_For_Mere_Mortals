-- List all the subjects that have a subject code starting with 'MUS'

USE SchoolSchedulingExample

SELECT 
	SubjectID,
	SubjectName,
	SubjectCode
FROM Subjects
WHERE SubjectCode LIKE 'MUS%'