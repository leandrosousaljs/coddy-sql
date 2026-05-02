/* Challenge

Available tables and columns:

people: id, name
Fetch all of the people whose name starts with K (uppercase) and ends with a (lowercase) and order the results by the names in descending order. */

SELECT *
FROM people
WHERE name LIKE 'K%a'
ORDER BY name DESC
