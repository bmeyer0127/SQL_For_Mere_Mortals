USE SchoolSchedulingExample
SELECT 
	StudFirstName, StudLastName, StudState
FROM Students
WHERE StudState NOT IN ('WA', 'OR', 'ID')