/* Challenge

Available tables and columns:
people: name, age, status

Fetch all of the people where the status is NOT retired */

SELECT *
FROM PEOPLE
-- Write your code below
WHERE NOT status = 'retired'