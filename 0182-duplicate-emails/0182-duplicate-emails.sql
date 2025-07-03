# Write your MySQL query statement below
SELECT DISTINCT(Email)
FROM (
    SELECT Email,
    COUNT(*) OVER(PARTITION BY Email) as cnt
    FROM Person
) as temp
WHERE cnt > 1