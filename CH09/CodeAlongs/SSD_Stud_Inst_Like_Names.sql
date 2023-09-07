-- Show me all the students and all the teachers and list together those who have the same first name
USE SchoolSchedulingExample
SELECT
	Students.StudFirstName + ' ' + Students.StudLastName AS StudName,
	Instructors.StfFirstName + ' ' + Instructors.StfLastname AS InstName
FROM
	Students
	FULL OUTER JOIN
	(SELECT
		Staff.StfFirstName,
		Staff.StfLastname
	FROM Staff
	WHERE Staff.Position = 'Faculty') AS Instructors
	ON Students.StudFirstName = Instructors.StfFirstName

-- Different than what book had but mf included staff who weren't teachers, the dumbass