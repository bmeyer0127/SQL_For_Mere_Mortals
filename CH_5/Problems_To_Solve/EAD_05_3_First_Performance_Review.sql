/*
	Show the date of each agent's first six-month performance review
*/

Select 
EntStageName,
DATEADD(month, 6, DateEntered) AS SixMonthReview
FROM Entertainers;