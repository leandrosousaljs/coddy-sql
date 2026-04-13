/* Challenge

Available tables and columns:
people: name, age, status

Fetch all of the people who are not employed and are not under 25.

Notice the NOT employed and unemployed are different things because the status column contains more than 2 distinct values. */

SELECT *
FROM PEOPLE
-- Write your code below
WHERE NOT status = 'employed' AND NOT age < 25