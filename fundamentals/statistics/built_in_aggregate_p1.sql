/* Challenge

Available tables and columns:
sales: product_id, price_per_unit,  quantity

Write a query that returns:
The total number of sales transactions
The average quantity per sale
The maximum price per unit
The total revenue (sum of quantity * price_per_unit)

Your result should have these exact column names:
total_transactions
avg_quantity
max_unit_price 
total_revenue */

SELECT 
  COUNT(*) as total_transactions,
  AVG(quantity) as avg_quantity,
  MAX(price_per_unit) as max_unit_price,
  SUM(quantity * price_per_unit) as total_revenue
FROM sales;
