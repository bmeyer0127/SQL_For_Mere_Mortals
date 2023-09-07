-- List all the recipes for salads
USE RecipesExample
SELECT
	RecipeTitle
FROM
	Recipes
	JOIN
	Recipe_Classes
	ON Recipes.RecipeClassID = Recipe_Classes.RecipeClassID
WHERE
	Recipes.RecipeClassID = 4