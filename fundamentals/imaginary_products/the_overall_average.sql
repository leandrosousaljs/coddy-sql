/* Challenge

Available tables and columns:
enom_gilpane: part_id, rpm, watt, size
castle_loctus: part_id, rpm, watt, size
honpan_bilopsa: part_id, rpm, watt, size
yurnol_qoltam: part_id, rpm, watt, size

Finally, calculate the average quality for each part_id.

Return part_id avg_quality, sorted by avg_quality in descending order. */

WITH filtered_enom_gilpane_quality as (    
    WITH enom_gilpane_quality as (    
        SELECT part_id, ((rpm * watt) / size) as quality
        FROM (
            SELECT part_id, rpm, watt + (select avg(watt) from enom_gilpane) as watt, size
            FROM enom_gilpane
        )
    )

    SELECT *
    FROM enom_gilpane_quality 
    WHERE quality > (select avg(quality) from enom_gilpane_quality)
),
filtered_castle_loctus_quality as (    
    WITH castle_loctus_quality as (    
        SELECT 
            part_id, ((rpm * watt) / size) as quality
        FROM (
            SELECT part_id, rpm, watt + (select avg(watt) from castle_loctus) as watt, size
            FROM castle_loctus
        )
    )

    SELECT *
    FROM castle_loctus_quality 
    WHERE quality > (select avg(quality) from castle_loctus_quality)
),
filtered_honpan_bilopsa_quality as (    
    WITH honpan_bilopsa_quality as (    
        SELECT 
            part_id, ((rpm * watt) / size) as quality
        FROM (
            SELECT part_id, rpm, watt + (select avg(watt) from honpan_bilopsa) as watt, size
            FROM honpan_bilopsa
        )
    )

    SELECT *
    FROM honpan_bilopsa_quality 
    WHERE quality > (select avg(quality) from honpan_bilopsa_quality)
),
filtered_yurnol_qoltam_quality as (    
    WITH yurnol_qoltam_quality as (    
        SELECT part_id, ((rpm * watt) / size) as quality
        FROM (
            SELECT part_id, rpm, watt + (select avg(watt) from yurnol_qoltam) as watt, size
            FROM yurnol_qoltam
        )
    )

    SELECT *
    FROM yurnol_qoltam_quality 
    WHERE quality > (select avg(quality) from yurnol_qoltam_quality)
),
quality_table as (
    SELECT * FROM filtered_enom_gilpane_quality
    UNION ALL
    SELECT * FROM filtered_castle_loctus_quality
    UNION ALL 
    SELECT * FROM filtered_honpan_bilopsa_quality
    UNION ALL 
    SELECT * FROM filtered_yurnol_qoltam_quality
)
SELECT part_id, AVG(quality) AS avg_quality
FROM quality_table
GROUP BY part_id
ORDER By avg_quality DESC;
