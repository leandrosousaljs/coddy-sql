/* Challenge

Available tables and columns:
doors: id, publication_year
doors_specs: id, country, color

Write a SQL query to analyze the sequence of door colors within each country, ordered by publication year. For each door space, show:

The country
The color
The publication year
A number representing the order of colors within each country based on publication year. Call this column color_sequence_number */

SELECT ds.country, ds.color, d.publication_year,
  ROW_NUMBER() OVER (PARTITION BY ds.country ORDER BY d.publication_year) AS color_sequence_number
FROM doors d
JOIN doors_specs ds ON d.id = ds.id;
