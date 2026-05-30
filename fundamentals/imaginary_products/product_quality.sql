/* Challenge

Available tables and columns:
enom_gilpane: part_id, rpm, watt, size

Calculate the quality for each part using this formula: Quality = (rpm * adjusted_watt) / size.

Notice that we are using the adjusted_watt.

Return part_id and quality */

WITH adjusted AS (
  SELECT part_id, rpm, watt + (
    SELECT AVG(watt) FROM enom_gilpane
  ) AS watt, size
  FROM enom_gilpane
)
SELECT part_id, (rpm * watt) / size AS quality
FROM adjusted;
