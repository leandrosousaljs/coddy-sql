/* Challenge

Available tables and columns:
enom_gilpane: part_id, rpm, watt, size

In this project you are a visitor in an imaginary product factory. You want to find the best quality products to buy for your industry.

Each table represents a product and each product has many parts. All tables (which will be added in later challenges) have the same columns.

For this challenge we will focus only on one product (table)

Your task is to adjust the watt values: For each row, add the overall average watt value (calculated from the entire table) to the existing watt value of that specific part.

In other words, calculate the average watt across all parts in the table, then add this same average to each individual part's watt value.

Return part_id, rpm, adjusted_watt and size */

SELECT part_id, rpm, watt + (
  SELECT AVG(watt) FROM enom_gilpane
) AS adjusted_watt, size
FROM enom_gilpane;
