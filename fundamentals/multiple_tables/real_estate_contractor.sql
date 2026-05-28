/* Challenge

Available tables and columns:
real_estate: asset_id, value, date
potential: asset_id, forecast

Some analysts forecast what is going to be the growth for real estate assets. We want to check if their forecast is true. 

For each asset in the real_estate table, calculate the ratio between the value of a newer date to the value of an older date.

For example, if there is an asset whose value in 2022-01-01 was 5 and in 2022-05-01 was 10 then that ratio is 10/5 = 2.

Ignore all of the comparisons that the day difference between the two dates is smaller than 101.

There are many dates for each asset so there are many ratios to compare. keep only the biggest ratio for each asset.

Finally, divide this ratio with the matching forecast from the potential table (call this field ratio_forecast) and sort the results in descending order.

The final result should have the asset_id and ratio_forecast.

Keep only the assets where the ratio_forecast is bigger than 1.

Note: To get a decimal solution from divide operation (/) you sometimes need to multiply the numerator by 1.0.

For example, instead of a / b use a * 1.0 / b to get the decimal result (when a and b are variables) */

SELECT potential.asset_id, ratio/forecast AS ratio_forecast
FROM (
    SELECT r1.asset_id, MAX(r2.value*1.0 / r1.value) AS ratio
    FROM real_estate AS r1
    JOIN real_estate AS r2 ON r1.date < r2.date AND r1.asset_id = r2.asset_id
    WHERE JULIANDAY(r2.date) - JULIANDAY(r1.date) > 100
    GROUP BY r1.asset_id
) AS actual
JOIN potential ON potential.asset_id = actual.asset_id
WHERE ratio_forecast > 1
ORDER BY ratio_forecast DESC;
