USE RecipesExample
SELECT 
	RecipeTitle,
	RecipeClassID,
	Notes
FROM Recipes
WHERE
	(RecipeClassID = '1')
AND
	Notes IS NOT NULL