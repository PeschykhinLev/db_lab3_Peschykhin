INSERT INTO Meal (item_name, serving_size) 
VALUES
('Egg McMuffin', 136),
('Big Mac', 211),
('Bacon Cheddar McChicken', 171),
('Premium Bacon Ranch Salad (without Chicken)', 223),
('Honey Mustard Snack Wrap (Grilled Chicken)', 116);

INSERT INTO Category (category_name)
VALUES
('Breakfast'),
('Beef & Pork'),
('Chicken & Fish'),
('Salads'),
('Snacks & Sides');

INSERT INTO Meal_Category (item_id, category_id)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO Nutritional_Information (Calories, Calories_from_Fat, Total_Fat, Saturated_Fat, Cholesterol, Sodium, Carbohydrates, Dietary_Fiber, Sugars, Protein, item_id)
VALUES
(24, 29, 17, 16, 14, 18, 11, 23, 13, 21, 1),
(11, 23, 22, 12, 19, 16, 13, 25, 18, 27, 2),
(27, 15, 13, 20, 21, 24, 26, 11, 10, 16, 3),
(29, 11, 20, 17, 16, 12, 13, 19, 22, 27, 4),
(20, 12, 26, 10, 28, 15, 17, 23, 13, 11, 5);

INSERT INTO Daily_Values_on_the_Nutrition (Total_Fat_Daily_Percentage, Saturated_Fat_Daily_Percentage, Cholesterol_Daily_Percentage, Sodium_Daily_Percentage, Carbohydrates_Daily_Percentage,  Dietary_Fiber_Daily_Percentage, Vitamin_A_Daily_Percentage, Vitamin_C_Daily_Percentage, Calcium_Daily_Percentage, Iron_Daily_Percentage, item_id)
VALUES
(90, 58, 87, 9, 6, 29, 78, 74, 67, 21, 1),
(39, 85, 10, 83, 86, 20, 59, 76, 47, 66, 2),
(84, 15, 65, 92, 99, 63, 49, 59, 34, 35, 3),
(99, 39, 6, 45, 60, 71, 18, 35, 27, 44, 4),
(85, 46, 34, 37, 4, 29, 59, 2, 65, 77, 5);