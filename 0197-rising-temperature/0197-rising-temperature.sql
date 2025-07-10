# Write your MySQL query statement below
SELECT w1.id
FROM   Weather AS w1
JOIN   Weather AS w0
       ON  w0.recordDate = DATE_SUB(w1.recordDate, INTERVAL 1 DAY)
WHERE  w1.temperature > w0.temperature;
