-- List ingredients not used in any recipe yet

USE RecipesExample

SELECT
	Ingredients.IngredientName
FROM
	Ingredients
	LEFT JOIN
	Recipe_Ingredients
	ON Ingredients.IngredientID = Recipe_Ingredients.IngredientID
WHERE Recipe_Ingredients.IngredientID IS NULL