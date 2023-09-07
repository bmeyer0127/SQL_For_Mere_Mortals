-- Show me the recipes that have beed and garlic
USE RecipesExample
SELECT
	BeefRecipe.RecipeTitle
FROM
	(SELECT DISTINCT
		Recipes.RecipeTitle,
		Ingredients.IngredientName
	FROM
	(Recipes
	JOIN
	Recipe_Ingredients
	ON Recipes.RecipeID = Recipe_Ingredients.RecipeID)
	JOIN
	Ingredients
	ON Recipe_Ingredients.IngredientID = Ingredients.IngredientID
	WHERE Ingredients.IngredientName = 'beef') AS BeefRecipe
	JOIN
	(SELECT DISTINCT
		Recipes.RecipeTitle,
		Ingredients.IngredientName
	FROM
	(Recipes
	JOIN
	Recipe_Ingredients
	ON Recipes.RecipeID = Recipe_Ingredients.RecipeID)
	JOIN
	Ingredients
	ON Recipe_Ingredients.IngredientID = Ingredients.IngredientID
	WHERE Ingredients.IngredientName = 'garlic') AS GarlicRecipe
	ON BeefRecipe.RecipeTitle = GarlicRecipe.RecipeTitle