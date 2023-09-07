-- For completed classes, list by category and student the category name, the student name,
--	and the student's average grade of all classes taken in that category for those students
--	who have and average higher than 90

-- Completed is ClassStatus 2

USE SchoolSchedulingExample

SELECT
	Students.StudFirstName + ' ' + Students.StudLastName AS StudentName,
	Categories.CategoryDescription,
	ROUND(AVG(Student_Schedules.Grade), 2) AS AvgGrade
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
	ON Classes.SubjectID = Subjects.SubjectID)
	JOIN
	Categories
	ON Subjects.CategoryID = Categories.CategoryID
WHERE
	Student_Schedules.ClassStatus = 2
GROUP BY 
	Students.StudFirstName,
	Students.StudLastName,
	Categories.CategoryDescription
HAVING
	AVG(Student_Schedules.Grade) > 90