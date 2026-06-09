/* Challenge

Available tables and columns:

air_conditioners: id, efficiency, strength, month
We want to track how air conditioner performance changes over time. Your task is to find air conditioners that had declining performance between months.

Here's what to do:

For each air conditioner in each month, calculate its performance ratio by dividing the average efficiency by the average strength using AVG(efficiency)/AVG(strength), grouped by id and month
Compare each air conditioner's current month performance with its performance two months later
Find cases where the current performance is significantly better than future performance (current ratio ÷ future ratio > 0.5)
Return the air conditioner id, month, and the comparison ratio for these cases */

WITH cond_avg AS (
    SELECT id, month, AVG(efficiency)/AVG(strength) as ratio
    FROM air_conditioners
    GROUP BY id, month
),
final_calc AS (
    SELECT id, month, ratio, LEAD(ratio, 2) OVER (PARTITION BY id ORDER BY month) as next_two_ratio
    FROM cond_avg
)
SELECT id, month, ratio/next_two_ratio as ratio_two_months
FROM final_calc
WHERE ratio/next_two_ratio > 0.5;
