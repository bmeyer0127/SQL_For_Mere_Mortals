-- List the faculty staff and the subject each teaches
USE SchoolSchedulingExample
SELECT DISTINCT
	Staff.StfFirstName + ' ' + Staff.StfLastname AS StfName,
	Subjects.SubjectName
FROM 
	(Staff
	JOIN
	Faculty_Subjects
	ON Staff.StaffID = Faculty_Subjects.StaffID)
	JOIN
	Subjects
	ON Faculty_Subjects.SubjectID = Subjects.SubjectID
WHERE Staff.Position = ('Faculty')