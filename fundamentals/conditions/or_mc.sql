/* Challenge

Available tables and columns:
people: age, status

Fetch all of the people who are either under age of 19 or above age 31 (not including 19 and not including 31) or the status is employed. */

SELECT * 
FROM people
-- Write your code below
WHERE age < 19 OR age > 31 OR status = 'employed'