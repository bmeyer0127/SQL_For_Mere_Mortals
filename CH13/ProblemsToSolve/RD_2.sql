-- List all meat ingredients and the count of recipes that include each one

USE RecipesExample

SELECT
	Ingredients.IngredientName,
	COUNT(Recipe_Ingredients.RecipeID) AS CountOfRecipes
FROM
	Ingredients
	LEFT JOIN
	Recipe_Ingredients
	ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID
WHERE
	Ingredients.IngredientClassID = 2
GROUP BY Ingredients.IngredientName