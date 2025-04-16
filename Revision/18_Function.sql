
-- functions

--ascii

drop table EMployee

select ascii('A')

create table Employee(
	id int,
	name varchar(10),
	salary int
)

insert into Employee values(1,'Ajay',40000),(2,'Vijay',32000),(3,'om',34000)

select * from EMployee

select ascii('id')
select char(65)

declare @temp varchar(10) = '   Ajay';

insert into employee values(4,'   Ajay',23000)

select * from Employee

select LTRIM(name) from Employee
select lower(name) from employee
select upper(name) from employee
select name, len(name) from employee
select name, reverse(name) from EMployee

select name , replicate('ajay',5) from Employee

