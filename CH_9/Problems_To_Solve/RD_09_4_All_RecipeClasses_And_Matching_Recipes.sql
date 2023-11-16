-- Display all recipe classes and any recipes

USE RecipesExample

SELECT
	Recipe_Classes.RecipeClassDescription,
	Recipes.RecipeTitle
FROM
	Recipe_Classes
	LEFT JOIN
	Recipes
	ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID