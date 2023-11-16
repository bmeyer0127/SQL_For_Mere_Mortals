-- Find the ingredients that use the same default measurement amount
USE RecipesExample
SELECT
	Ingredient1.IngredientName,
	Ingredient1.MeasureDescript,
	Ingredient2.IngredientName
FROM
	(SELECT DISTINCT
		Ingredients.IngredientName,
		Measurements.MeasurementDescription AS MeasureDescript,
		Ingredients.MeasureAmountID
	FROM
	Ingredients
	JOIN
	Measurements
	ON Ingredients.MeasureAmountID = Measurements.MeasureAmountID) AS Ingredient1
	JOIN
	(SELECT DISTINCT
		Ingredients.IngredientName,
		Ingredients.MeasureAmountID
	FROM
	Ingredients) AS Ingredient2
	ON Ingredient1.MeasureAmountID = Ingredient2.MeasureAmountID
	WHERE Ingredient1.IngredientName <> Ingredient2.IngredientName