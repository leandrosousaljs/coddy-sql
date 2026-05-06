/* Challenge

Available tables and columns:

beverages: id, current_year, expiration_year
Your bar stocks a vast selection of juices, and you need to identify which ones require attention. Identify and sort these juices based on the following clear criteria:

Old Expired Juices
Juices where the expiration year is MORE than 6 years before the current year (current_year - expiration_year > 6)
These need to be recycled immediately
Almost Expired Juices
Juices expiring in the current year
OR juices expiring next year (expiration_year = current_year + 1)
These need to be sent for renewal
Follow these steps:

Extract the IDs of juices that meet either of these criteria
Rename the ID column to 'to_renew'
Sort results by processing priority:
Most urgent first (oldest expired juices)
Then almost expired juices
Use (current_year - expiration_year) for sorting */

SELECT id as to_renew
FROM beverages
WHERE current_year - expiration_year > 6 OR expiration_year = current_year OR expiration_year = current_year + 1
ORDER BY current_year - expiration_year DESC;
