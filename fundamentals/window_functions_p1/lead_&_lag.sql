/* Challenge

Available tables and columns:

air_conditioners: id, efficiency, strength, month
Compare each air conditioner's efficiency with the previous one.

Write a query that shows each air conditioner's efficiency along with the efficiency of the previous air conditioner installed (based on id). Also, calculate the efficiency difference between the current and previous air conditioner. Order the result by id and efficiency in ascending order.

Expected output columns:

id
efficiency
previous_efficiency (using LAG)
efficiency_difference (current efficiency - previous efficiency)
Finally after this query, filter the row where there is an empty previous_efficiency or empty efficiency_difference like so:

SELECT * FROM (
    -- Your query here
)
WHERE previous_efficiency != 0 */

SELECT * FROM (
    SELECT id, efficiency, LAG(efficiency) OVER (ORDER BY id) AS previous_efficiency,
    efficiency - LAG(efficiency) OVER (ORDER BY id) AS efficiency_difference
    FROM air_conditioners
    ORDER BY id, efficiency
)
WHERE previous_efficiency != 0;
