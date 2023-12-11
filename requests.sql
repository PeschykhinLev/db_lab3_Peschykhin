-- Cередне значення кількості калорій у Big Mac та Egg McMuffin

SELECT AVG(Calories) FROM Nutritional_Information
WHERE item_id IN (
    SELECT item_id FROM meal WHERE item_name = 'Big Mac' OR item_name = 'Egg McMuffin'
);

-- Категорія страви, яка має найбільшу кількість калорій
SELECT Category.category_name
FROM Category
JOIN Meal_Category ON Category.category_id = Meal_Category.category_id
JOIN Nutritional_Information ON Meal_Category.item_id = Nutritional_Information.item_id
WHERE Nutritional_Information.Calories = (
    SELECT MAX(Calories) FROM Nutritional_Information
);

-- Назва страви, яка має у собі 2% від денної норми споживання вітаміну С
SELECT Meal.item_name
FROM Meal
JOIN Daily_Values_on_the_Nutrition ON Meal.item_id = Daily_Values_on_the_Nutrition.item_id
WHERE Daily_Values_on_the_Nutrition.Vitamin_C_Daily_Percentage = 2;

