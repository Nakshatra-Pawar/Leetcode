# Write your MySQL query statement below
SELECT name AS Customers
FROM Customers cus
LEFT JOIN Orders o
ON cus.id = o.customerId
WHERE o.customerId IS NULL;
