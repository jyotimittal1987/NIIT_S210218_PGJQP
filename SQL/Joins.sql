use empdata_new
select * from emp
select * from department
-------Inner join-----------------------------
select e.id,e.nm as 'Employee Name',d.dept_name
from emp e join department d
on e.id=d.empid 
-----------------Equi join----------------
select *
from emp e join department d
on e.id=d.empid 
------------Left outer join-----------------
select e.id,e.nm as 'Employee Name',d.dept_name
from emp e left join department d
on e.id=d.empid 
--------------Right outer join-----------------
select e.id,e.nm as 'Employee Name',d.dept_name
from emp e right join department d
on e.id=d.empid 
-------------cross join-----------------
select e.id,e.nm as 'Employee Name',d.dept_name
from emp e cross join department d
------------------self join----------------
select * from emp
select e1.id as 'Employee Id',e1.nm as 'Employee name',
e1.title as 'Employee profile',e1.manager_id as 'Manager Id',
e2.nm as 'Manager Name' 
from emp e1 join emp e2
on e1.manager_id=e2.id
select * from emp
select * from department
insert into department values(4,'Sales')
=================Subquery==============================
--Query within query--Outer query , inner query
--o/p of inner query will become input for outer query
--Waquery to retrive the name of all employees working for Sales department
select * from emp
select * from department
--If inner query returns more than 1 row, then use in keyword .
--If it returns 1 row, then = can be used
select nm as 'Employee Name' from emp where id in  
(
select empid from department where dept_name='Sales'
)
--------------------Exists keyword------------------
Exists keyword only checks whether inner query executes or not
select nm as 'Employee Name' from emp where exists  
(
select empid from department where dept_name='Sales'
)

================================================
select char(65)










