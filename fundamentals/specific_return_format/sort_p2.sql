/* Challenge

Available tables and columns:
feathers: id, weight, area

Return all of the ids after ordering them by the area in descending order. If the feathers have the same area, sort them by weight in ascending order. */

SELECT id
FROM feathers
ORDER BY area DESC, weight ASC
