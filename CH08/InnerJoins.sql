USE RecipesExample
SELECT
	Recipe_Classes.RecipeClassDescription,	-- Type
	Recipes.RecipeTitle,					-- Name
	Recipes.Preparation,					-- Prep
	Ingredients.IngredientName,				-- Ingr
	Recipe_Ingredients.RecipeSeqNo,			-- Stepnum
	CAST(Recipe_Ingredients.Amount AS VARCHAR) + 
	' ' + 
	CAST(Measurements.MeasurementDescription AS VARCHAR) 
	AS Amt
FROM
	(((Recipe_Classes
		JOIN Recipes
		ON Recipe_Classes.RecipeClassID = 
			Recipes.RecipeClassID)
		JOIN Recipe_Ingredients
		ON Recipe_Ingredients.RecipeID = 
			Recipes.RecipeID)
		JOIN Ingredients
		ON Ingredients.IngredientID = 
			Recipe_Ingredients.IngredientID)
		JOIN Measurements
		ON Measurements.MeasureAmountID = 
			Ingredients.MeasureAmountID
WHERE Recipe_Classes.RecipeClassID LIKE 1
ORDER BY RecipeTitle, RecipeSeqNo