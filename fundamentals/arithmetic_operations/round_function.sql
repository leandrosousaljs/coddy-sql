/* Examples: 
SELECT ROUND(3.7);        -- Returns 4
SELECT ROUND(3.14159, 2); -- Returns 3.14
SELECT ROUND(3.14159, 0); -- Returns 3
*/

SELECT 
    product_name,
    ROUND(price, 2) as rounded_price
FROM products;
