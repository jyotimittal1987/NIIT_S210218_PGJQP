----------------------------------Grouping set-------------------------
create table emptable
(
empname varchar (63),
region varchar (60),
department varchar (60),
sal float
)
 select * from emptable

insert into emptable values('max','north america','information technology',25000.00)
insert into emptable values('andrew','south america','information technology',28000.00)
insert into emptable values('maria','north america','human resource',63000.00)
insert into emptable values('stephen','middle east asia','information technology',40000.00)
insert into emptable values('steve','middle east asia','human resource',60000.00)

select max(sal) as 'Maximum Sal',region from EmpTable group by region
having max(sal)>50000

select * from emptable
select Region,department,avg(sal) averageSalary
from EmpTable
group by
grouping sets
(
  ( region,department),
  (region),
  (department)
  )
-----------------------------rollup---------------------------------
create table salesHistory
(
employeeId int,
yearofsale int,
salesAmount float
)
select * from salesHistory

insert into salesHistory values(101,2007,12000.00) 
insert into salesHistory values(101,2008,14000.00) 
insert into salesHistory values(101,2009,25000.00) 
insert into salesHistory values(102,2007,15000.00) 
insert into salesHistory values(102,2008,12000.00) 
insert into salesHistory values(102,2009,11000.00) 
insert into salesHistory values(103,2007,20000.00) 
insert into salesHistory values(103,2008,24000.00) 


select Employeeid,yearOfSale, sum(salesAmount) as salesAmount
from salesHistory
Group by rollup(employeeId,yearOfSale)


--------------------------cube-----------------------

select Employeeid,yearOfSale, sum(salesAmount) as salesAmount
from salesHistory
Group by cube(employeeId,yearOfSale)
--------------------RaisError---------------
 BEGIN TRY
 DECLARE @MyInt INT;
 -- Following statement will create Devide by Zero Error
 SET @MyInt = 1/0;
 END TRY
 BEGIN CATCH
 DECLARE @ErrorMessage VARCHAR(2000);
 SELECT @ErrorMessage = ERROR_MESSAGE();
 RAISERROR (@ErrorMessage, 12, 6);
 END CATCH;
 GO
 -------------corelated subquery------------------------------
 create table psgnr(id int,traveldate datetime)
insert into psgnr values(2,'10-26-2009')
insert into psgnr values(2,'11-26-2009')
insert into psgnr values(1,'9-06-2010')
insert into psgnr values(1,'9-07-2010')


select * from psgnr



SELECT id, traveldate FROM psgnr p1
 WHERE traveldate= ( 
  SELECT MAX(traveldate) FROM psgnr p2 
   WHERE p1.id=p2.id) 

-------------------------------pivot table----------------------------------------------
select * from purchasing.purchaseorderheader

select vendorid,[258] as emp1,[253] as emp2,[255] as emp3,[259] as emp4,[261] as emp5
from
(select purchaseorderid,employeeid,vendorid from purchasing.purchaseorderheader)p
pivot
(count(purchaseorderid)
for employeeid in
(
[258],[253],[255],[259],[261])
)as pvt
order by vendorid
------------modified comparison operator-----------
          ---------ALL operator---------------
select * from emp
select id,nm,title,vacationhrs from  emp where  
vacationhrs >all (select avg(vacationhrs) from emp where title='manager')

select id,nm,title,vacationhrs from  emp where  
vacationhrs >=all (select avg(vacationhrs) from emp where title='manager')

select id,nm,title,vacationhrs from  emp where  vacationhrs <=all (select avg(vacationhrs) from emp where title='manager')

select id,nm,title,vacationhrs from  emp where  vacationhrs<all (select avg(vacationhrs) from emp where title='manager')

select id,nm,title,vacationhrs from  emp where  vacationhrs <>all (select avg(vacationhrs) from emp where title='manager')



----------------ANY operator----------------

select id,nm,title,vacationhrs from  emp where  vacationhrs >=any
(select avg(vacationhrs) from emp where title='manager')

select id,nm,title,vacationhrs from  emp where  vacationhrs <>
any(select avg(vacationhrs) from emp where title='manager')

------------------------------------apply operator--------------------------------------
create table depositer(nm varchar(32),acc_num int)

insert into depositer values('mohan',101)
insert into depositer values('sohan',102)
insert into depositer values('rohan',103)
insert into depositer values('pohan',104)


select * from depositer


create table borrower(nm varchar(33),loan_num int) 

insert into borrower values('mohan',301)
insert into borrower values('sohan',302)
insert into borrower values('raj',304)


select * from borrower
select * from depositer

--------------cross apply-----------------

select d.nm,d.acc_num,br.loan_num from depositer d
cross apply
(select * from borrower br where d.nm=br.nm)br

--------------outer apply--------------------

select d.nm,d.acc_num,br.loan_num from depositer d
outer apply
(select * from borrower br where d.nm=br.nm)br

------------------------------------------------------------union--------------------------

select nm from depositer
union
select nm from borrower

------------------------union all-----------------------
select nm from depositer
union all
select nm from borrower

------------------------except---------------------

select nm from depositer
except
select nm from borrower



select nm from borrower
except
select nm from depositer
------------------intersect-----------------------------

select nm from depositer
intersect
select nm from borrower

------

create database new

use new

----------------------------while loop----------------------
DECLARE @intFlag INT
 SET @intFlag = 1
 WHILE (@intFlag <=5)
 BEGIN
 PRINT @intFlag
 SET @intFlag = @intFlag + 1
 END
 GO

------------------------------while with break-----------------------
DECLARE @intFlag INT
 SET @intFlag = 1
 WHILE (@intFlag <=5)
 BEGIN
 PRINT @intFlag
 SET @intFlag = @intFlag + 1
 IF @intFlag = 4
 BREAK;
 END
 GO
 
--------------------while with break and continue-------------------------

 DECLARE @intFlag INT
 SET @intFlag = 1
 WHILE (@intFlag <=5)
 BEGIN
 PRINT @intFlag
 SET @intFlag = @intFlag + 1
 CONTINUE;
 IF @intFlag = 4 -- This will never executed
 BREAK;
 END
 GO
 
------------------------another example---------------------

 DECLARE @intFlag INT
 SET @intFlag = 1
 PRINT @intFlag
 WHILE (@intFlag <=5) BEGIN
 SET @intFlag = @intFlag + 1
 IF @intFlag = 4 
 CONTINUE;
 ELSE
 PRINT @intFlag
 END
 GO

--------------------------------------exceptions--------------------------

create table aa(id int primary key,nm varchar(21),contact bigint)

insert into aa values(1,'mohan',1212321)
insert into aa values(2,'yash',876765)



BEGIN TRY
INSERT INTO aa (id,nm) VALUES(6, 'Test')
print 'added successfully'
END TRY
BEGIN CATCH
   SELECT 'There was an error! ' + ERROR_MESSAGE()as errormessage,
error_line() as errorline,
error_procedure() as pp,
error_severity() as severity,
error_state() as state
END CATCH



select  * from aa

BEGIN TRY
 DECLARE @MyInt INT;
 -- Following statement will create Devide by Zero Error
 SET @MyInt = 1/0;
 END TRY
 BEGIN CATCH
 SELECT 'Divide by zero error encountered.' ErrorMessage,error_severity()
 END CATCH;
 GO


-------------------------raise error-----------------------------
 BEGIN TRY
 DECLARE @MyInt INT;
 -- Following statement will create Devide by Zero Error
 SET @MyInt = 1/0;
 END TRY
 BEGIN CATCH
 DECLARE @ErrorMessage NVARCHAR(4000);
 SELECT @ErrorMessage = ERROR_MESSAGE();
 RAISERROR (@ErrorMessage, 18, 6);
 END CATCH;
 GO

----------------------------------stored procedure--------------------------------
create procedure emp_proc as
begin
select * from emp
select * from dept
end

exec emp_proc

alter procedure emp_proc as 
select * from emp

drop procedure emp_proc
-------------------
alter procedure p1 as select id from aa

exec p1

drop procedure p1

----------------------parameterized stored procedure------------------------

create proc pp12 @id int
as
begin
print'data of employee'
select * from emp where id=@id
end

execute  pp12 1

exec pp12 @id=1


--------------------------return a value------------------------------------------
CREATE PROC ad12(@InValue int)
AS
Return @Invalue
GO

DECLARE @ReturnValue INT
EXEC @ReturnValue = ad12 3
SELECT ReturnValue=@ReturnValue



select * from aa

create proc first2 @id int ,@nmm varchar(10) output 
as
begin
if exists(select * from emp where id=@id)
begin
select @nmm =nm from emp where id =@id
return 0
end
else
return 1
end

create proc s3 @id int
as
begin
declare @i int
declare @nmm varchar(10)
exec @i  = first2 @id,
			@nmm output
if(@i=0)
begin
print 'found'
print @nmm
end
else
print'not found'
end

exec s3 1



