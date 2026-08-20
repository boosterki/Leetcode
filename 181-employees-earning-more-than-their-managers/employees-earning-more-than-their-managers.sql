# Write your MySQL query statement below
select t2.name as Employee from Employee t1
join Employee  t2 
on   t2.managerId = t1.id
where t2.salary>t1.salary