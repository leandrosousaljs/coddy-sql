/* Challenge

Available tables and columns:

police_report: name, report, map, severe_score
Fetch the top 5 severe criminal names and order by severe_score in descending order
A severe criminal is someone who matches all of the following criteria:

report is either null, or the report contains one of the following letters: g, b, G, or B.
map is one of the following places: Caerleon, Dewsbury, Kirkwall, Findochty.
Name the column as worst_criminals. */

SELECT name as worst_criminals
FROM police_report
WHERE (report IS NULL OR report LIKE '%g%' OR report LIKE '%b%' OR report LIKE '%G%' OR report LIKE '%B%')
AND map IN ('Caerleon', 'Dewsbury', 'Kirkwall', 'Findochty')
ORDER BY severe_score DESC
LIMIT 5;
