USE RecipesExample
SELECT 
	Recipe_Classes.RecipeClassDescription,
	Recipe_Details.RecipeTitle,
	Recipe_Details.Preparation,
	Ingredients.IngredientName,
	Recipe_Details.RecipeSeqNo,
	Recipe_Details.Amount,
	Recipe_Details.MeasurementDescription
FROM
	(Recipe_Classes
	FULL OUTER JOIN
	(SELECT
		Recipes.RecipeID,
		Recipes.RecipeClassID,
		Recipes.RecipeTitle,
		Recipes.Preparation,
		Recipe_Measures.Amount,
		Recipe_Measures.RecipeSeqNo,
		Recipe_Measures.MeasurementDescription,
		Recipe_Measures.IngredientID
	FROM Recipes
	LEFT OUTER JOIN
	(SELECT
		Recipe_Ingredients.RecipeID,
		Recipe_Ingredients.IngredientID,
		Recipe_Ingredients.RecipeSeqNo,
		Recipe_Ingredients.Amount,
		Measurements.MeasurementDescription
	FROM Recipe_Ingredients
	INNER JOIN Measurements
	ON Measurements.MeasureAmountID = Recipe_Ingredients.MeasureAmountID)
	AS Recipe_Measures
	ON Recipes.RecipeID = Recipe_Measures.RecipeID)
	AS Recipe_Details
	ON Recipe_Classes.RecipeClassID = Recipe_Details.RecipeClassID)
	FULL OUTER JOIN Ingredients
	ON Ingredients.IngredientID = Recipe_Details.IngredientID
ORDER BY RecipeTitle, RecipeSeqNo