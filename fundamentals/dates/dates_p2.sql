/* Challenge

Available tables and columns:
events: id, start, end

Fetch the IDs of all events that last less than three days */

SELECT id
FROM events
WHERE (JULIANDAY(end) - JULIANDAY(start)) < 3;
