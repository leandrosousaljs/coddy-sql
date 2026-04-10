/* Challenge

Available tables and columns:

people: age, status
Fetch all of the people who are either under age of 20 or above age 28 (not including 20 and not including 28). */

SELECT * 
FROM people
-- Write your code below
WHERE age < 20 OR age > 28