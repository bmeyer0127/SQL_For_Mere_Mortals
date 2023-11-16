-- Which recipe requires the most cloves of garlic?

USE RecipesExample

SELECT DISTINCT
	Recipes.RecipeTitle
FROM
	Recipes
	JOIN
	Recipe_Ingredients
	ON Recipes.RecipeID = Recipe_Ingredients.RecipeID
WHERE
	Recipes.RecipeID = 
	(SELECT
		Recipe_Ingredients.RecipeID
	FROM
		Recipe_Ingredients
	WHERE
		Recipe_Ingredients.IngredientID = 9
		AND
		Recipe_Ingredients.Amount = 
		(SELECT
			MAX(Recipe_Ingredients.Amount)
		FROM
			Recipe_Ingredients
		WHERE
			Recipe_Ingredients.IngredientID = 9))

-- Def not the best way to do this but I did it!
--	Ill make a mental note to come back and optimize but no promises