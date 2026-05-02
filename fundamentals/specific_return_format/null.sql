/* Challenge

Available tables and columns:
people: name

Fetch all of the unique names without missing values. */

SELECT DISTINCT name
FROM people
WHERE name IS NOT NULL
