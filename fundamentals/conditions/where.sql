/* Challenge

Available tables and columns:
events: event_id, people

Fetch all of the event_ids where people is less than 14 people */

SELECT event_id FROM events
-- Write your code below
WHERE people < 14