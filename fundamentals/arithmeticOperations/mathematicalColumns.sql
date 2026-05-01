/* Challenge

Available tables and columns:
products: id, price, quantity
Create a query that calculates the following:

A column called total_value that multiplies the price by quantity and adds a fixed shipping cost of 15
A column called discounted_value that:
First multiplies the price by quantity
Then applies a 20% discount (multiply by 0.8)
Finally adds a fixed shipping cost of 10
Try to use parentheses appropriately to ensure the calculations are performed in the correct order! */

SELECT price * quantity + 15 as total_value,
       price * quantity * 0.8 + 10 as discounted_value
FROM products
