/* Challenge

Available tables and columns:
events: id, name, size, year

You have a cyber security firm that experienced an arbitrary attack, resulting in all of your systems shutting down. To solve this issue, you need to identify all of the events that appear suspicious. A suspicious event meets one or more of the following criteria:

Its size is significantly different from the average normal event size of 50MB. For this analysis, consider files smaller than 1MB or larger than 100MB as suspicious.
It was created before the year 2000
It has a missing name
Your task:

Identify all suspicious events based on the criteria mentioned above.
Return the event IDs and their names in descending order by their ID.
Note: An event can be suspicious for multiple reasons. For example, an event with size 72MB and year 1051 would be flagged because of its year (1051 < 2000), not its size (72MB is within normal range). */

SELECT id, name
FROM events
-- Write your code below
WHERE (size > 100 OR size < 1) OR year < 2000 OR name IS NULL
ORDER BY id DESC
