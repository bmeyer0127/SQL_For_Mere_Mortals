USE RecipesExample

SELECT
	Recipes.RecipeTitle
FROM
	Recipes
WHERE
	Recipes.RecipeID IN
		(SELECT 
			RecipeID
		FROM
			Recipe_Ingredients
		WHERE
			Recipe_Ingredients.IngredientID IN
				(SELECT	
					Ingredients.IngredientID
				FROM
					Ingredients
					JOIN
					Ingredient_Classes
					ON Ingredients.IngredientClassID = Ingredient_Classes.IngredientClassID
				WHERE
					Ingredient_Classes.IngredientClassDescription = 'Seafood'))
					