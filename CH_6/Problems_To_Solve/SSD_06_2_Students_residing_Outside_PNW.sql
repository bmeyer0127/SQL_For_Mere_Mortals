-- Can you show me which students live outside of the Pacific Northwest?

USE SchoolSchedulingExample

SELECT 
	StudFirstName, StudLastName, StudState
FROM Students
WHERE StudState NOT IN ('WA', 'OR', 'ID')