/* Challenge

Available tables and columns:
shop: price, quantity, category, list_date

Write a query to find all items (select all columns) where the price is higher than the average price of all items.

Use a subquery in the WHERE clause to calculate the average price, then compare each item's price against this average. */

SELECT * FROM shop
WHERE price > (SELECT AVG(price) FROM shop);
