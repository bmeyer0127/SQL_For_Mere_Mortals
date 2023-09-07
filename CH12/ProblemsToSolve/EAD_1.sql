-- What is the average salary of a booking agent?

USE EntertainmentAgencyExample

SELECT
	FORMAT(AVG(Agents.Salary), 'c') AS AverageSalaryForAgent
FROM
	Agents