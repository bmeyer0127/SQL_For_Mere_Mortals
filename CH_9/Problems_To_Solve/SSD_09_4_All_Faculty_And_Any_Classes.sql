-- Display all faculty and the classes they are scheduled to teach

USE SchoolSchedulingExample

SELECT 
	Staff.StfFirstName + ' ' + Staff.StfLastname AS StfName,
	Teachers.ClassID,
	Teachers.SubjectCode,
	Teachers.SubjectName

FROM
	Staff
	LEFT JOIN
	(SELECT
		Faculty_Classes.ClassID,
		Faculty_Classes.StaffID,
		Subjects.SubjectCode,
		Subjects.SubjectName
	FROM
		(Faculty_Classes
		JOIN
		Classes
		ON Classes.ClassID = Faculty_Classes.ClassID)
		JOIN
		Subjects
		ON Classes.SubjectID = Subjects.SubjectID) AS Teachers
	ON Staff.StaffID = Teachers.StaffID
WHERE Staff.Position LIKE 'Faculty'

-- Book answer includes staff members who are not instructors (only instructors are categorized as faculty)
	-- My answer includes only faculty members