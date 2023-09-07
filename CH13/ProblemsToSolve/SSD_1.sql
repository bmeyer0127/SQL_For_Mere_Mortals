-- Display by category the category name and the count of classes offered

USE SchoolSchedulingExample

SELECT
	Categories.CategoryDescription,
	COUNT(Classes.SubjectID) AS NumberOfClassesOffered
FROM
	(Categories
	JOIN
	Subjects
	ON Categories.CategoryID = Subjects.CategoryID)
	JOIN
	Classes
	ON Subjects.SubjectID = Classes.SubjectID
GROUP BY
	Categories.CategoryDescription