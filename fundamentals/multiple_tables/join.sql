/* Challenge

Available tables and columns:

orders: id, customer_id
products: id, unit_price, units_in_stock
order_items: id, order_id, product_id, quantity
Find the customer IDs of customers who have ordered products with a unit price less than 10, and list the total quantity of those cheap products each customer has ordered.

Return following columns:

customer_id
total_quantity (the sum of quantities of products with a unit price < 10 for each customer) */

SELECT customer_id, SUM(order_items.quantity) AS total_quantity
FROM orders
JOIN order_items ON orders.id = order_items.order_id
JOIN products ON products.id = order_items.product_id
WHERE products.unit_price < 10
GROUP BY customer_id;
