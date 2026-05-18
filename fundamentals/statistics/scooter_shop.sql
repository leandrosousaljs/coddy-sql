/* Challenge

Available tables and columns:

scooters: model, brand, has_lights, price
As the manager of a scooter shop, you have noticed that many scooters are not original, meaning they are missing a model name. Furthermore, bad scooters typically do not have lights.

Your task involves two steps:

First, Add to all scooter prices in the shop the overall average price.
Then, Calculate the average price for each brand, considering only good and original scooters (i.e., scooters with a model name and lights).
The result should include the brand and the average price - avg_price. Sort the results by the average price in ascending order. */

SELECT brand, AVG(price) AS avg_price
FROM (
    SELECT model, brand, has_lights, price + (SELECT AVG(price) from scooters) as price
    FROM scooters
)
WHERE model IS NOT NULL AND has_lights = TRUE
GROUP BY brand
ORDER BY avg_price;
