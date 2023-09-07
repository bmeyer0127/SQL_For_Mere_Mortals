-- List the salad, soup, and main course categories and any recipes

USE RecipesExample

SELECT
	Recipe_Classes.RecipeClassDescription,
	Recipes.RecipeTitle
FROM
	Recipe_Classes
	LEFT JOIN
	Recipes
	ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID
WHERE Recipe_Classes.RecipeClassID IN (1, 4, 7) 