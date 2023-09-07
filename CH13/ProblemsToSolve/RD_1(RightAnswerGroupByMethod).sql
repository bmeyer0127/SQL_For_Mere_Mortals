-- If I want to cook all the recipes in my cookbook, how much of each ingredient must 
--	I have on hand?

USE RecipesExample

SELECT
	Ingredients.IngredientName,
	Measurements.MeasurementDescription,
	SUM(Recipe_Ingredients.Amount) AS AmountNeeded
FROM
	(Ingredients
	JOIN
	Recipe_Ingredients
	ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID)
	JOIN
	Measurements
	ON Recipe_Ingredients.MeasureAmountID = Measurements.MeasureAmountID
GROUP BY
	Ingredients.IngredientName,
	Measurements.MeasurementDescription

ORDER BY
	Ingredients.IngredientName