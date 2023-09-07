-- Find all accessories that are priced greater than any clothing item

USE SalesOrdersExample

SELECT
	Products.ProductName
FROM
	Products
WHERE
	Products.CategoryID = 1 AND
	Products.RetailPrice > ANY
	(SELECT	
		Products.RetailPrice
	FROM
		Products
	WHERE
		Products.CategoryID = 3)

-- Idk why he is so vague or even solves a problem that is different than the one he gives.
-- Not a big deal, but he specifies that we should get accessories that have a greater price
-- than ANY clothing item. Not all of them. Super easy to fix, but I wish he weren't so vague sometimes