/* Challenge

Available tables and columns:
temperature: place_id, avg_temp

Fetch the 5 coldest places from the temperature table. Follow these steps:

Sort the result in ascending order
Limit the result to 5 rows */

SELECT *
FROM temperature
ORDER BY avg_temp
LIMIT 5
