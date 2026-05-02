/* Challenge

Available tables and columns:
kitchen_items: cutlery, amount

Fetch all of the kitchen items that the amount is less than 3 items. Change the cutlery column name to silverware  */

SELECT cutlery AS silverware, amount
FROM kitchen_items
WHERE amount < 3
