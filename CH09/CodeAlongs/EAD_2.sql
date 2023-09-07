-- Show me all musical styles and the customers who prefer those styles

USE EntertainmentAgencyExample

SELECT
	Musical_Styles.StyleID,
	Musical_Styles.StyleName,
	Customers.CustomerID,
	Customers.CustFirstName + ' ' + Customers.CustLastName AS CustName
FROM
	Musical_Styles
	LEFT JOIN
	(Musical_Preferences
	JOIN Customers
	ON Musical_Preferences.CustomerID = Customers.CustomerID)
	ON Musical_Styles.StyleID = Musical_Preferences.StyleID