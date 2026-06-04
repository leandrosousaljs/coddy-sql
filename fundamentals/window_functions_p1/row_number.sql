/* Challenge

Available tables and columns:
liquids: id, density

Fetch all liquids with more than 5.677 density.

Number the result (use the ROW_NUMBER() function) and call this column row_num */

SELECT * , ROW_NUMBER() OVER () AS row_num
FROM liquids
WHERE density > 5.677;
