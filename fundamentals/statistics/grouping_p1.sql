/* Challenge

Available tables and columns:
foods: name, type, pH

Calculate, for each food type, the average pH and the difference between the maximum and minimum pH values.

name the columns: type, ph_average, ph_max_min_diff.

Sort the results by the difference in descending order.

Use the ROUND(value, decimal) to round each result to two decimal places. */

SELECT type, ROUND(AVG(pH), 2) AS ph_average, ROUND(MAX(pH) - MIN(pH), 2) AS ph_max_min_diff
FROM foods
GROUP BY type
ORDER BY ph_max_min_diff DESC;
