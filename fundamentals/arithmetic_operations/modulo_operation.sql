/* Challenge

Available tables and columns:
products: id, price, quantity

Create a query that:

Shows the product ID
Assigns each product to one of three quality control teams (0, 1, or 2) based on the product ID using the modulo operator, call this column as quality_control
Only includes products where the quantity column contains an odd number (e.g., 1, 3, 5, 7...) */

SELECT id,
       id % 3 as quality_control
FROM products
WHERE quantity % 2 = 1
