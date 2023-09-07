SELECT EngagementNumber, CAST(DATEDIFF(day, StartDate, EndDate) + 1 AS VARCHAR) + ' day(s)'
AS EngagementLength
FROM Engagements;