-- Display each entertainment group ID, entertainment group member,
--	and the amount of pay for each member based on the total contract price,
--	divided by the number of members in the group

USE EntertainmentAgencyExample

SELECT
	Entertainers.EntertainerID,
	Entertainer_Members.MemberID,
	Members.MbrFirstName + ' ' + Members.MbrLastName AS MemberName,
	FORMAT((SUM(Engagements.ContractPrice) /  
	(SELECT
		COUNT(*)
	FROM
		Entertainer_Members AS EM2
	WHERE
		EM2.EntertainerID = Entertainers.EntertainerID)), 'c')
	AS TotalPay
FROM
	((Entertainer_Members
	JOIN
	Members
	ON Entertainer_Members.MemberID = Members.MemberID)
	JOIN
	Entertainers
	ON Entertainer_Members.EntertainerID = Entertainers.EntertainerID)
	JOIN
	Engagements
	ON Entertainers.EntertainerID = Engagements.EntertainerID
WHERE
	Entertainer_Members.Status <> 3
GROUP BY
	Entertainers.EntertainerID,
	Entertainer_Members.MemberID,
	Members.MbrFirstName,
	Members.MbrLastName