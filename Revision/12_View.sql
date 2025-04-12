-- view

drop table Employee

create table Employee(
	Id int,
	name varchar(10),
	salary int
)


insert into EMployee values(1,'Ajay',230000),(2,'Vijay',20092)

select * from EMployee

--column level security
create view EMp1
as
	select name,salary from EMployee


-- row level security
alter view EMp1
as
    select * from EMployee where ID=2

select * from EMp1

insert into EMp1 values(4,'DIDI',200939);

select * from Employee

insert into Employee values(5,'Viju',234029)
select * from Emp1

alter view emp1
as 
	select * from EMployee

select * from Emp1




declare @student1 table(

	id int,
	name varchar(20)
)

select * from @student1

insert into @student1 
 select id,name from EMploee

select * from @student1

drop table EMploee

create table EMploee(

id int,
name varchar(20)
)

insert into Emploee values(1,'Ajay')

select * from EMploee

select * into Ab from EMploee where 1<>1

select * from Ab