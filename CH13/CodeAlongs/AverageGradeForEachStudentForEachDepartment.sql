-- For completed classes, list by category and student the category
--	name, the student name, and the student's average grade of all
--	classes taken in that category

-- ClassStatus 2 means completed

USE SchoolSchedulingExample

SELECT
	Categories.CategoryDescription,
	Students.StudFirstName + ' ' + Students.StudLastName AS StudName,
	FORMAT((AVG(Student_Schedules.Grade) / 100), 'p') AS AverageGrade
FROM
	(((Categories
	JOIN
	Subjects
	ON Categories.CategoryID = Subjects.CategoryID)
	JOIN
	Classes
	ON Subjects.SubjectID = Classes.SubjectID)
	JOIN
	Student_Schedules
	ON Classes.ClassID = Student_Schedules.ClassID)
	JOIN
	Students
	ON Student_Schedules.StudentID = Students.StudentID
WHERE
	Student_Schedules.ClassStatus = 2
GROUP BY
	Categories.CategoryDescription,
	Students.StudFirstName,
	Students.StudLastName