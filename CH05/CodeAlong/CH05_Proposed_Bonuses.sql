SELECT (StfLastname + ', ' + StfFirstName) AS Staff, 
FORMAT(Salary, 'c') AS Salary, 
FORMAT(Salary * 0.07, 'c') AS ProposedBonus
FROM Staff 
ORDER BY StfLastname, StfFirstName;