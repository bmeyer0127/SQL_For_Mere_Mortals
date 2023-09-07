USE SchoolSchedulingExample
SELECT 
	StaffID,
	Title,
	Status
FROM Faculty
WHERE Title = 'Associate Professor'
	AND Status = 'Full Time'