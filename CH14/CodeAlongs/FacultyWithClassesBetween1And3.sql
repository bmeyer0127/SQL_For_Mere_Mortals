-- List each staff member and the count of classes each is 
--	scheduled to teach for those staff members who teach at 
--	least one but fewer than three classes

USE SchoolSchedulingExample

SELECT
	Staff.StfFirstName + ' ' + Staff.StfLastname AS StaffName,
	COUNT(Faculty_Classes.ClassID) AS CountOfClasses
FROM
	Staff
	JOIN
	Faculty_Classes
	ON Staff.StaffID = Faculty_Classes.StaffID
GROUP BY
	Staff.StfFirstName,
	Staff.StfLastname
HAVING
	COUNT(Faculty_Classes.ClassID) BETWEEN 1 AND 3