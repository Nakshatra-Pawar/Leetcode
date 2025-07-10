# Write your MySQL query statement below
SELECT id
FROM (
    SELECT id, temperature,recordDate,
    LAG(recordDate) OVER(ORDER BY (recordDate)) as prev_date,
    LAG(temperature) OVER (ORDER BY (recordDate)) as prev_temp
    FROM Weather
) temp_table
WHERE DATEDIFF(recordDate, prev_date) = 1 
      AND temperature > prev_temp;
