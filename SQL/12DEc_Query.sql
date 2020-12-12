select * from emp

create view vw_emp as 
select id,salary from emp

select * from vw_emp
insert into vw_emp values(10,23324)
select * from emp
delete from vw_emp where id=10

alter view vw_emp as select id,nm,salary from emp

select * from vw_emp
=======================================================
drop view vw_emp

=====================================================================
create table dummy(id int primary key, name varchar(44))

create nonclustered index n1 on dummy(name)


select * from dummy where id=1

=============================================================
select * from vw_emp

alter view vw_emp with schemabinding as select id,salary from dbo.emp

create unique clustered index u1 on vw_emp(id)

====================================================
select * from emp
select * from dept
select * from emp
select * from emp
select * from dept
select * from dept
Go
---Variable declaration---------------------------
Declare @num int
select @num=max(salary)from emp
print(@num)

-----------------If else----------------------------
Declare @num int
select @num=min(salary)from emp
if @num<10000
begin
    print @num
	print('Review is required')
end
else
begin

print( 'Review is not required')
end

---------------------Switch case---------------
alter table emp add marital_status char(1)

select * from emp

update emp set marital_status='u' where id=3

select id, 'marital_status'=
case marital_status
when 'm' then 'married'


when 'u' then 'unmarried'
else ' Not specified'
end
from emp
---------------------Exceptions----------------------------------
select * from emp

insert into emp(id, nm)values(1,'Sam')

begin try
insert into emp(id, nm)values(90,'Sam')
print 'Added successfully'
end try
begin catch
  select 'There was an  Error' + ERRoR_Message() as Message,
  error_line(),error_Procedure(),error_severity(),error_state()
end catch

========================================================























