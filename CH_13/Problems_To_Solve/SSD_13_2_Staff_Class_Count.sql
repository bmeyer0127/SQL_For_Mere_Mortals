-- List each staff member and the count of classes each is scheduled to teach

USE SchoolSchedulingExample

SELECT
	Staff.StfFirstName + ' ' + Staff.StfLastname AS StaffName,
	COUNT(Faculty_Classes.ClassID) AS NumberOfClasses
FROM
	Staff
	LEFT JOIN
	Faculty_Classes
	ON Staff.StaffID = Faculty_Classes.StaffID
GROUP BY
	Staff.StfFirstName,
	Staff.StfLastname

-- Different than answer but that is because author only included teachers
--	and not all staff members. Most of the staff members that have 0 number
--	of classes are admin members and such