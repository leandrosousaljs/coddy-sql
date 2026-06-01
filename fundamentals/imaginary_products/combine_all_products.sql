/* Challenge

Available tables and columns:
enom_gilpane: part_id, rpm, watt, size
castle_loctus: part_id, rpm, watt, size
honpan_bilopsa: part_id, rpm, watt, size
yurnol_qoltam: part_id, rpm, watt, size

Now calculate the same quality for all products (Each table is a product) and combine them all using UNION ALL:

quality_table as (
    SELECT * FROM filtered_quality_1
    UNION ALL
    SELECT * FROM filtered_quality_2
    UNION ALL 
    SELECT * FROM filtered_quality_3
    UNION ALL 
    SELECT * FROM filtered_quality_4
)
Return part_id and quality */

WITH quality_1 AS (
    SELECT
        part_id,
        (rpm * watt) / size AS quality
    FROM (
        SELECT
            part_id,
            rpm,
            watt + (
                SELECT AVG(watt)
                FROM enom_gilpane
            ) AS watt,
            size
        FROM enom_gilpane
    )
),
filtered_quality_1 AS (
    SELECT
        part_id,
        quality
    FROM quality_1
    WHERE quality > (
        SELECT AVG(quality)
        FROM quality_1
    )
),
quality_2 AS (
    SELECT
        part_id,
        (rpm * watt) / size AS quality
    FROM (
        SELECT
            part_id,
            rpm,
            watt + (
                SELECT AVG(watt)
                FROM castle_loctus
            ) AS watt,
            size
        FROM castle_loctus
    )
),
filtered_quality_2 AS (
    SELECT
        part_id,
        quality
    FROM quality_2
    WHERE quality > (
        SELECT AVG(quality)
        FROM quality_2
    )
),
quality_3 AS (
    SELECT
        part_id,
        (rpm * watt) / size AS quality
    FROM (
        SELECT
            part_id,
            rpm,
            watt + (
                SELECT AVG(watt)
                FROM honpan_bilopsa
            ) AS watt,
            size
        FROM honpan_bilopsa
    )
),
filtered_quality_3 AS (
    SELECT
        part_id,
        quality
    FROM quality_3
    WHERE quality > (
        SELECT AVG(quality)
        FROM quality_3
    )
),
quality_4 AS (
    SELECT
        part_id,
        (rpm * watt) / size AS quality
    FROM (
        SELECT
            part_id,
            rpm,
            watt + (
                SELECT AVG(watt)
                FROM yurnol_qoltam
            ) AS watt,
            size
        FROM yurnol_qoltam
    )
),
filtered_quality_4 AS (
    SELECT
        part_id,
        quality
    FROM quality_4
    WHERE quality > (
        SELECT AVG(quality)
        FROM quality_4
    )
),
quality_table AS (
    SELECT * FROM filtered_quality_1
    UNION ALL
    SELECT * FROM filtered_quality_2
    UNION ALL 
    SELECT * FROM filtered_quality_3
    UNION ALL 
    SELECT * FROM filtered_quality_4
)
SELECT part_id, quality
FROM quality_table;
