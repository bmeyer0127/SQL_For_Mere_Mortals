-- List recipes and all ingredients for each recipe for recipes that have a seafood ingredient

USE RecipesExample

SELECT
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
WHERE
	Recipes.RecipeID IN
		(SELECT
			Recipe_Ingredients.RecipeID
		FROM 
			Recipe_Ingredients
			JOIN
			Ingredients
			ON Recipe_Ingredients.IngredientID = Ingredients.IngredientID
		WHERE
			Ingredients.IngredientClassID = 10)