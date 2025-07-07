# Write your MySQL query statement below
WITH keep AS(
    SELECT MIN(id) AS ID
    FROM Person
    GROUP BY email
)

DELETE FROM Person
WHERE id NOT IN (SELECT id FROM keep);