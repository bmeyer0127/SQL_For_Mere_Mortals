-- How many classes are held in room 3346?

USE SchoolSchedulingExample

SELECT
	COUNT(Classes.ClassID) ClassesInRoom3346
FROM
	Classes
WHERE
	Classes.ClassRoomID = 3346