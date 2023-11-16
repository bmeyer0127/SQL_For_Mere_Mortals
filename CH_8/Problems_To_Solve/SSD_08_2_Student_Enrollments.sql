-- List students and all the classes in which they are currently enrolled
USE SchoolSchedulingExample
SELECT 
	Students.StudFirstName + ' ' + Students.StudLastName AS StudName,
	Student_Schedules.ClassID,
	Subjects.SubjectName
FROM
	((Students
	JOIN
	Student_Schedules
	ON Students.StudentID = Student_Schedules.StudentID)
	JOIN
	Classes
	ON Student_Schedules.ClassID = Classes.ClassID)
	JOIN
	Subjects
	ON Classes.SubjectID = Subjects.SubjectID
WHERE Student_Schedules.ClassStatus = 1