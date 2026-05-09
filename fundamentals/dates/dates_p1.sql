/* Challenge

Available tables and columns:
games: id, date

Fetch all of the game ids that are not played in the winter.
Winter dates are: 2022-12-21 - 2023-03-20. Only these days should not be included.

Sort them by the date in descending order and rename the column to game */

SELECT id as game
FROM games
WHERE date NOT BETWEEN '2022-12-21' AND '2023-03-20'
ORDER BY date DESC;
