-- Значення кількості калорій у стравах з категорії "Сніданки"
SELECT Calories FROM Nutritional_Information
WHERE item_id = (
    SELECT item_id FROM meal_category WHERE item_id =(
		 SELECT category_id FROM category Where category_name = 'Breakfast'
	)
);

-- Категорія страви, які мають від 100 до 500 калорій
SELECT Category.category_name
FROM Category
JOIN Meal_Category ON Category.category_id = Meal_Category.category_id
JOIN Nutritional_Information ON Meal_Category.item_id = Nutritional_Information.item_id
WHERE Nutritional_Information.Calories > 100 AND Nutritional_Information.Calories < 500;


-- Назва страви, яка має у собі більше 2% від денної норми споживання вітаміну С
SELECT Meal.item_name
FROM Meal
JOIN Daily_Values_on_the_Nutrition ON Meal.item_id = Daily_Values_on_the_Nutrition.item_id
WHERE Daily_Values_on_the_Nutrition.Vitamin_C_Daily_Percentage > 2;

