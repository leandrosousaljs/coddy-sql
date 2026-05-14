/* Challenge

Available tables and columns:
earthquakes: location, amplitude, period

The Richter scale is a logarithmic scale used to measure the magnitude of earthquakes.

We need to return the average magnitude for each location of all of the major earthquakes

A major earthquake is defined as:

The amplitude is greater or equal to 1
The period of the waves is greater or equal to 1 minute
For this challenge, we will use a different formula: M = (A/T)2 / T, which is equivalent to M = ((A/T)*(A/T)) / T.

Return the location and the average magnitude of each location while including only the major earthquakes (name the column avg_magnitude). Include in your result only the locations where the avg_magnitude is greater than 1

Round the results to 2 decimal places */

SELECT location, ROUND(AVG(((amplitude / period) * (amplitude / period)) / period), 2) as avg_magnitude
FROM earthquakes
WHERE amplitude >= 1 AND period >= 1
GROUP BY location
HAVING AVG(((amplitude / period) * (amplitude / period)) / period) > 1;
