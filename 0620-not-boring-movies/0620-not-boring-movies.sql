# Write your MySQL query statement below
SELECT * 
FROM Cinema
WHERE id%2!=0 AND description NOT in('boring')
ORDER BY rating desc;
