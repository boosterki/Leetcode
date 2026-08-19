# Write your MySQL query statement below
SELECT(
    SELECT DISTINCT salary from Employee 
    order by salary desc limit 1,1
) AS  SecondHighestSalary 