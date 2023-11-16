-- If I want to cook all the recipes in my cookbook, how much of each ingredient must 
--	I have on hand?

USE RecipesExample

SELECT DISTINCT
	Ingredients.IngredientName,
	Measurements.MeasurementDescription,
	(SELECT
		SUM(RI.Amount)
	FROM
		Recipe_Ingredients AS RI
	WHERE
		RI.MeasureAmountID = Recipe_Ingredients.MeasureAmountID
		AND
		RI.IngredientID = Ingredients.IngredientID) AS AmountNeeded
FROM
	(Ingredients
	JOIN
	Recipe_Ingredients
	ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID)
	JOIN
	Measurements
	ON Recipe_Ingredients.MeasureAmountID = Measurements.MeasureAmountID

-- I got the right answer but not using group by. Not sure why I wanted to do
--	it this way but it was kinda fun