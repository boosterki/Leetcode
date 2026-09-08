with tab AS (select d.name as ' Department' , e.name as Employee ,e.salary as 'Salary', 
dense_rank() over(partition by e.departmentID order by e.salary DESC) AS rnk

from Employee e join Department d on e.departmentId = d.id ) 
Select Department, Employee ,Salary from tab
where rnk<=3