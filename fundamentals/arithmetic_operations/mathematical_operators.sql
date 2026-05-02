/* Challenge

Available tables and columns:
products: id, price, quantity

Create two calculated columns:

1.First column named high_mix_op:
Take the price column
Multiply it by 2
Subtract 20 from the result

2.Second column named low_mix:
Take the quantity column
Divide it by 1.5
Add 5 to the result */

SELECT (price * 2) - 20 as high_mix_op,
       (quantity / 1.5) + 5 as low_mix
FROM products
