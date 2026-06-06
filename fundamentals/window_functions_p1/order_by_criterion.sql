/* Challenge

Available tables and columns:
plants: id, hue, rough

Select all plants with a hue greater than 0.34 and add two numbering columns:

row_num_hue that will number the rows according to hue in ascending order

row_num_score that will number the rows by the following formula: rough*hue in descending order

Return only the id and the two numbering columns. Order the result by the plant id in ascending order */

SELECT id,
  ROW_NUMBER() OVER (ORDER BY hue ASC) as row_num_hue,
  ROW_NUMBER() OVER (ORDER BY rough*hue DESC) as row_num_score
FROM plants
WHERE hue > 0.34
ORDER BY id;
