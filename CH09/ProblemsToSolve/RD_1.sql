-- Display missing types of recipes

USE RecipesExample

SELECT 
	Recipe_Classes.RecipeClassDescription
FROM
	Recipe_Classes
	LEFT JOIN
	Recipes
	ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID
WHERE Recipes.RecipeClassID IS NULL