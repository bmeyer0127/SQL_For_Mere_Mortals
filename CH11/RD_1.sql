-- Show me the types of recipes and the count of recipes in each type

USE RecipesExample

SELECT 
	Recipe_Classes.RecipeClassDescription,
	(SELECT
		COUNT(Recipes.RecipeClassID)
	FROM
		Recipes
	WHERE
		Recipes.RecipeClassID = Recipe_Classes.RecipeClassID) AS AmtOfRecipes
FROM
	Recipe_Classes
