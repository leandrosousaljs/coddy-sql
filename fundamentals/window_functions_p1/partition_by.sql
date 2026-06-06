/* Challenge

Available tables and columns:
doors: id, publication_year
doors_specs: id, country, color

A factory is building doors. It needs to number the doors for each country and color combination that have a publication_year smaller than 2000. Name this column row_num.

The doors should be numbered within each group in ascending order by their id. Doors without specs should be ignored. Sort the final result in ascending order by the id. */

SELECT d.id, ds.country, ds.color, ROW_NUMBER() OVER (PARTITION BY ds.country, ds.color ORDER BY d.id) AS row_num
FROM doors d
JOIN doors_specs ds ON d.id = ds.id
WHERE d.publication_year < 2000
ORDER BY d.id;
