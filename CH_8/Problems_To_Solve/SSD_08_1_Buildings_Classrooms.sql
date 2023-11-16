-- Display buildings and all the classrooms in each building
USE SchoolSchedulingExample
SELECT 
	Buildings.BuildingName,
	Class_Rooms.ClassRoomID
FROM 
	Buildings
	JOIN
	Class_Rooms
	ON Buildings.BuildingCode = Class_Rooms.BuildingCode