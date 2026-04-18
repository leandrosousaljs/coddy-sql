/* Challenge

Available tables and columns:
objects: id, colorful, in_stock, size , is_fragile

Find all objects that meet AT LEAST ONE of these conditions:

colorful and not fragile
In stock and small (size <= 2) */

SELECT * FROM objects
WHERE (colorful IS TRUE AND is_fragile IS FALSE)
OR (in_stock IS TRUE AND size <= 2)
