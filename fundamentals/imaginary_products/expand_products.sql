/* Challenge

Available tables and columns:

enom_gilpane: part_id, rpm, watt, size
Keep only the parts that have a quality value greater than the average quality.

Return part_id and quality */

WITH adjusted AS (
    SELECT part_id, rpm, watt + (
        SELECT AVG(watt) FROM enom_gilpane
    ) AS watt, size
    FROM enom_gilpane
),
qualities AS (
    SELECT part_id, (rpm * watt) / size AS quality
    FROM adjusted
)
SELECT part_id, quality
FROM qualities
WHERE quality > (
    SELECT AVG(quality) FROM qualities
);
