/* Challenge

Available tables and columns:

devices_specs: device_id, width, height, num_features, opinion
devices_score: device_id, score
A device's quality is measured by (width/height)*num_features.

We want to find all of the overrated devices. Fetch all of the devices where the device's opinion is greater than the average quality and the device's score is less than the average quality. Return only the device_id.

To solve it, use the WITH clause to create a subquery that calculates the average quality and reuse it in the main query. */

WITH avg_quality AS (
  SELECT AVG((width/height)*num_features) AS avg_q
  FROM devices_specs
)
SELECT dsp.device_id
FROM devices_specs dsp
JOIN devices_score dsc ON dsp.device_id = dsc.device_id
CROSS JOIN avg_quality aq
WHERE dsp.opinion > aq.avg_q AND dsc.score < aq.avg_q;
