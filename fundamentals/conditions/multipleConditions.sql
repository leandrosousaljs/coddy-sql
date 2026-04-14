/* Challenge

Available tables and columns:
candies: name, price, color, weight
Write a query to find all candies that are either:

brown and cost 2 OR
mixed and weigh less than 40
The query should return only the name and color of these candies. */

SELECT name, color 
FROM candies
-- Write your code below
WHERE color = 'brown' AND price = 2 OR color = 'mixed' AND weight < 40