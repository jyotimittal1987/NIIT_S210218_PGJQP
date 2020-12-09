select * from emp
--------foreign key----------------------------
create table department
(
EmpId int foreign key references emp(id),
dept_name varchar(30)
)

select * from emp
select * from department

insert into department values(1,'Sales')
insert into department values(2,'Marketing')
insert into department values(7,'HR')
insert into department values(90,'Sales')
==============Joins---------------------------
select * from emp
select * from department

If we want to retrive the data from multiple tables in a single resultset,
In that case we need joins
Types of joins:
1)Inner join
2)Left outer join
3)Right outer join
4)Cross join
5)Self join
6)Equi join
==================Inner join========================
--Only matching record retrieve
WAq to retrive empid, emp name along with dept name.

select * from emp
select * from department

select e.id,e.nm as 'Employee NAme',d.dept_name 
from emp e join department d on
 e.id=d.empid

 ==========================





