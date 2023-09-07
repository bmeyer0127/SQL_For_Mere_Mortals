SELECT StfLastname + ', ' + StfFirstName AS Staff, 
DateHired, ((DATEDIFF(day, DateHired, '2017-10-01') / 365)) AS YearsCompleted
FROM Staff
ORDER BY StfLastName, StfFirstName;