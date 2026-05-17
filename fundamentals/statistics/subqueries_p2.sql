/* Challenge

Available tables and columns:
shop: price, quantity, category, list_date

Find categories where their total quantity is greater than the average of all quantities in the shop.

Important: You must use a subquery inside the HAVING clause to calculate the average. Do not use a hardcoded value or a separate query — the subquery should compute AVG(quantity) from the shop table directly inside HAVING.

Steps to solve:

First, write a subquery that calculates the average of all quantities in the shop: SELECT AVG(quantity) FROM shop
Then, for each category, sum their quantities and compare with this subquery using the HAVING keyword */

SELECT category, SUM(quantity) as total_quantity
FROM shop
GROUP BY category
HAVING SUM(quantity) > (
    SELECT AVG(quantity) 
    FROM shop
);
