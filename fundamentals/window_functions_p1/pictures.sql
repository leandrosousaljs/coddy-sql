/* Challenge

Available tables and columns:

picture_characteristics: day_of_month, ink_liters, colors_num
picture_interests: day_of_month, num_people_interested
Pictures have all kinds of characteristics, such as the amount of ink (in liters), the number of colors, and the number of people who want to buy them.

We want to identify days where the artist used less resources (ink and colors) while still maintaining positive interest from people, while the artist should use less ink and less color to save costs. In this challenge, we would like to examine this hypothesis. Follow these steps:

Calculate the day-over-day difference for:
ink_liters (name this column ink_diff)
colors_num (name this column colors_diff)
Filter the results to show only days where:
ink_diff is negative (showing a decrease in ink usage)
colors_diff is negative (showing a decrease in colors used)
num_people_interested is greater than zero (at least one person is interested in the picture — note that the data may contain days with zero interest)
Create a ranking column (day_rank) that:
Ranks days from 1 to N based on num_people_interested
Higher number of interested people should get a lower rank (1 being the best)
Return:
day_of_month
day_rank
Order the results by day_rank in ascending order */

WITH stats AS (
SELECT day_of_month,
    ink_liters - LAG(ink_liters, 1) OVER (ORDER BY day_of_month) as ink_diff,
    colors_num - LAG(colors_num, 1) OVER (ORDER BY day_of_month) as colors_diff
FROM picture_characteristics

)
SELECT 
    stats.day_of_month,
    ROW_NUMBER() OVER (ORDER BY picture_interests.num_people_interested DESC) AS day_rank
FROM stats
JOIN picture_interests ON picture_interests.day_of_month = stats.day_of_month
WHERE ink_diff < 0 AND colors_diff < 0 AND num_people_interested > 0;
