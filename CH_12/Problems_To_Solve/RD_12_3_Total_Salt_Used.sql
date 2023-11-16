-- Calculate the total number of teaspoons of salt in all recipes

USE RecipesExample

SELECT
	SUM(Recipe_Ingredients.Amount) TotalTeaspoonsOfSalt
FROM
	Recipe_Ingredients
WHERE
	Recipe_Ingredients.IngredientID = 11