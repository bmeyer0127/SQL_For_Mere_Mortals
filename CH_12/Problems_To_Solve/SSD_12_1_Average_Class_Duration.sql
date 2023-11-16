-- What is the current average class duration?

USE SchoolSchedulingExample

SELECT
	AVG(Classes.Duration) AS AverageClassDuration
FROM
	Classes