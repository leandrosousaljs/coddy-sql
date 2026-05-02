/* Challenge

Available tables and columns:

people: name, age, status
Fetch all of the people who are between the ages of 17 and 25 (including 17 and 25) and the status is equal to employed. */

SELECT * 
FROM people
-- write your code below
WHERE age >= 17 AND age <= 25 AND status = 'employed'