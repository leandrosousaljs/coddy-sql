/* Challenge

Available tables and columns:
cellphones: model, price, wifi_5g

Fetch all of the cellphone models that start with the letter m and the 3rd letter is o, the price range is between 1000 and 1500, and they support wifi_5g.

Return only the cellphone model and rename it to id */

SELECT model AS id
FROM cellphones
WHERE model LIKE 'm_o%'
AND price BETWEEN 1000 AND 1500
AND wifi_5g IS TRUE
