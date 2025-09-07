# Write your MySQL query statement below
SELECT t.x, t.y, t.z, (
    CASE WHEN t.x > 0 AND t.y > 0 AND t.z > 0 
    AND t.x + t.y > t.z 
    AND t.x + t.z > t.y
    AND t.y + t.z > t.x
    THEN "Yes" 
    ELSE "No" END) AS triangle
FROM Triangle AS t;