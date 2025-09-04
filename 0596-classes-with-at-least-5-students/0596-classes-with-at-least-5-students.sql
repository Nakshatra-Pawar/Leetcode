# Write your MySQL query statement below
SELECT class
FROM (
    Select Count(student) AS cnt, class
    FROM Courses
    GROUP BY class
) temp
WHERE cnt >= 5;