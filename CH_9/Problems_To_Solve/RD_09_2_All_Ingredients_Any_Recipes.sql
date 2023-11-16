-- Show me all ingredients and any recipes they're used in

USE RecipesExample

SELECT
	Ingredients.IngredientName,
	Recipes.RecipeTitle
FROM
	Ingredients
	LEFT JOIN
	(Recipes
	JOIN
	Recipe_Ingredients
	ON Recipes.RecipeID = Recipe_Ingredients.RecipeID)
	ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID
