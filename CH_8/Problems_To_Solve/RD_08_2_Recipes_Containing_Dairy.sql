-- List all the recipes that contain a dairy ingredient
USE RecipesExample
SELECT DISTINCT
	Recipes.RecipeTitle
FROM
	((Recipes
	JOIN
	Recipe_Ingredients
	ON Recipes.RecipeID = Recipe_Ingredients.RecipeID)
	JOIN
	Ingredients
	ON Recipe_Ingredients.IngredientID = Ingredients.IngredientID)
	JOIN
	Ingredient_Classes
	ON Ingredients.IngredientClassID = Ingredient_Classes.IngredientClassID
WHERE Ingredient_Classes.IngredientClassID = 8