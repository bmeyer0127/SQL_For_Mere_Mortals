-- Show me the students who have a grade of 85 or better in art and who also have a grade of 85 or better in any computer courses
USE SchoolSchedulingExample
SELECT StudName
FROM
	(SELECT 
		Students.StudFirstName + ' ' + Students.StudLastName AS StudName,
		Student_Schedules.StudentID
	FROM 
		(((Students
		JOIN
		Student_Schedules
		ON Students.StudentID = Student_Schedules.StudentID)
		JOIN
		Classes
		ON Student_Schedules.ClassID = Classes.ClassID)
		JOIN 
		Subjects
		ON Subjects.SubjectID = Classes.SubjectID)
		JOIN
		Categories
		ON Subjects.CategoryID = Categories.CategoryID
	WHERE
		(Categories.CategoryID IN ('ART')
		AND Student_Schedules.Grade >= 85)) AS ArtStud
	JOIN
	(SELECT 
		Student_Schedules.StudentID
	FROM 
		((Student_Schedules
		JOIN
		Classes
		ON Student_Schedules.ClassID = Classes.ClassID)
		JOIN 
		Subjects
		ON Subjects.SubjectID = Classes.SubjectID)
		JOIN
		Categories
		ON Subjects.CategoryID = Categories.CategoryID
	WHERE
		(Categories.CategoryID IN ('CIS', 'CSC')
		AND Student_Schedules.Grade >= 85)) AS CSStud ON ArtStud.StudentID = CSStud.StudentID