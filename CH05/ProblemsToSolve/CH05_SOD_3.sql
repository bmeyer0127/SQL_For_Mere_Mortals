/*
	Compile a complete list of vendor names, addresses, and phone numbers in vendor name order
*/

SELECT
VendName,
VendStreetAddress + ', ' + VendCity + ', ' + VendState + ' ' + VendZipCode AS VendAddress,
VendPhoneNumber
FROM Vendors
ORDER BY VendName;