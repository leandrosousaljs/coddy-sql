/* Challenge

Available tables and columns:
events: id, start, end

Write a query that shows:

The event ID
The start date formatted as "DD-MM-YYYY". Call this column formatted_start
The end date formatted as "DD-MM-YYYY". Call this column formatted_end
The duration in days between start and end, rounded to the nearest whole number. Call this column duration_days
Filter only the rows that the year of the start column is 2009 (STRFTIME() returns a string and not a number).

Sort the results by the duration days in descending order. */

SELECT id, STRFTIME('%d-%m-%Y', start) as formatted_start,
 STRFTIME('%d-%m-%Y', end) as formatted_end,
 ROUND(JULIANDAY(end) - JULIANDAY(start)) as duration_days
FROM events
WHERE STRFTIME('%Y', start) = '2009'
ORDER BY duration_days DESC;
