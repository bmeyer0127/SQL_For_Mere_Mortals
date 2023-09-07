/*
	Can you give me a staff member phone list?
*/

SELECT
StfFirstName + ' ' + StfLastname AS StfName,
'(' + StfAreaCode + ')' + '-' + StfPhoneNumber AS FullStfNumber
FROM Staff;