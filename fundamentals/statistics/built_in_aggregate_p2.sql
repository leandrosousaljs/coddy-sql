/* Challenge

Available tables and columns:
items: id, price

Calculate how much each item's price exceeds the average price of all items. Display the item ID, its price, and the difference from the average. Name the difference column as diff_from_avg.

Order the results by the difference in descending order. */

SELECT id, price, price - (SELECT AVG(price) from items) as diff_from_avg
FROM items
ORDER BY diff_from_avg DESC;
