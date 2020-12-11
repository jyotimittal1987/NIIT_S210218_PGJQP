--Constraints--
use PGJQP_S210218

create table employee
(
empId int,
empName varchar(40)not null,
salary float,
email_Id varchar(50)
constraint c1 primary key(empId),
constraint c2 unique(email_Id)
)

select * from employee
---Partial Insertion------
insert into employee(empId, empName)values(101,'John')
===================check constraint==============================
-Emp Leave : SL,PL, CL

create table empLeave(
empId int ,
empLeave char(2)
constraint c3 check (empLeave in('SL','PL','CL'))
)

insert into empLeave values(2,'yl')
insert into empLeave values(1,'SL')

select * from empleave
------------------Default constraint----------------------
create table student 
(
stuId int primary key,
stu_name varchar(44),
form_date date default get_date()
) 

select * from student

insert into student(stuId,stu_name)values(101,'Sam')
===========================Rules==========================
create rule r1 as @leave in('cl','sl','pl')

create table leave1(id int, leavetype varchar(44))
sp_bindrule 'r1','leave1.leavetype'
insert into leave1 values(2,'kl')
select * from leave1

create table leave2(id int, leavetype varchar(44))

sp_bindrule 'r1','leave2.leavetype'

sp_unbindrule 'leave1.leavetype'
========================user defined types ===========================
create type t1 from varchar(30)not null

create table sample1(id int, name t1) 

====================Renaming a table ============================
sp_rename sample1, sample_new

=====================================================
create synonym s1 for AdventureWorks2012.[HumanResources].[EmployeeDepartmentHistory]

select * from s1
===========================================================












