-- Can you explain why the subquery solution returns seven more rows? 
--	Is it popssible to modify the query in question 2 to return 11 rows?


-- In the initial query, you are performing a join on Ingredients and Recipe_Ingredients. Because of that,
--	it only provides rows that are relavent to both Ingredients and Recipe_Ingredients. But because some
--	of the rows in Ingredients are not in any recipes, they will not appear in an inner join. You must 
--	use an outer join to display all of the meat ingredients