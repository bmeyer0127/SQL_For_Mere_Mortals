-- Count the number of main course recipes

USE RecipesExample

SELECT
	COUNT(Recipes.RecipeID) NumberOfMainCourses
FROM
	Recipes
WHERE
	Recipes.RecipeClassID = 1