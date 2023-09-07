-- List all meat ingredients and the count of recipes that include each one
--	CHALLENGE: Solve using subquery

USE RecipesExample

SELECT
	Ingredients.IngredientName,
	(SELECT
		COUNT(Recipe_Ingredients.RecipeID)
	FROM
		Recipe_Ingredients
	WHERE
		Recipe_Ingredients.IngredientID = Ingredients.IngredientID) AS RecipeCount
FROM
	Ingredients
WHERE
	Ingredients.IngredientClassID = 2