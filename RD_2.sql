-- List the ingredients that are used in some recipes where the measurement amount
--	in the recipe is not the default measurement amount

-- This is extremely unclear as to what it is really asking for. Maybe I am the silly
--	one but I am fairly confused

-- Full disclosure, I basically copy and pasted this from the design tab from 
--	CH11_Ingredients_Using_Nonstandard_Measure and I still have no idea what 
--	it is asking for

-- Wait... Maybe I get it now. Ingredients IS the standard, and it's asking for 
--	Recipe_Ingredients that deviate from that standard. Weird.

USE RecipesExample

SELECT
	Ingredients.IngredientID,
	Ingredients.IngredientName,
	Ingredients.MeasureAmountID
FROM
	Ingredients
WHERE
	Ingredients.MeasureAmountID <> ANY
		(SELECT
			Recipe_Ingredients.MeasureAmountID
		FROM
			Recipe_Ingredients
		WHERE
			Recipe_Ingredients.IngredientID = Ingredients.IngredientID)