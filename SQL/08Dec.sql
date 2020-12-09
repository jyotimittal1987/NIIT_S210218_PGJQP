use PGJQP_S210218
---Create a table-----
create table employee
(
empId int primary key,
emp_name varchar(30)not null,
salary float,
contact_no bigint unique,
emailid varchar(30)
)
------------Retrieve---------------------
select * from employee
----------------------------
varchar(30): suparaja : variable length
char(30): Suparaja : Fixed length

--------------------------------------
insert into employee values(1,'Divya',87000,65343443,'Divya@gmail.com')
insert into employee values(2,'Sai',24345,null,'Sai@gmail.com')
insert into employee values(3,'shibha',120000,21332423,'Shibha@gmail.com')
insert into employee values(4,'rohan',120000,8633555,'xyz@gmail.com')

select * from employee
-------------------------------------------
update employee set contact_no=7312525 where empId=2
-----------insert and update--------
insert : always add a new record
update : modify the existing record

------------------------------------------





