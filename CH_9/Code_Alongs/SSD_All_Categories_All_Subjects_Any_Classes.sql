-- Show me all subject categories and any classes for all subjects

USE SchoolSchedulingExample

SELECT 
	Categories.CategoryDescription,
	Subjects.SubjectCode,
	Subjects.SubjectName,
	Classes.ClassID
FROM
	Categories
	LEFT JOIN
	(Subjects
	LEFT JOIN
	Classes
	ON Subjects.SubjectID = Classes.SubjectID)
	ON Categories.CategoryID = Subjects.CategoryID