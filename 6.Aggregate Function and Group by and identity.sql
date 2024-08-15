use Ajay2024

go

--Aggregate function

--count

create table Employee(
	id int,
	name varchar(10),
	Emp_sal int
)

insert into Employee values(1,'Ajay',400000),(2,'Vijay',350000),
(3,'Akash',370000)

select id ,name,Emp_sal from Employee

select count(*) from Employee --3

select count(1) from Employee --3

select count(id) from Employee --3

-- max   to find max value

select max(Emp_sal) from Employee

select max(id) from Employee

-- min

select min(Emp_sal) from Employee 

-- sum

select sum(id) from Employee

select sum(Emp_sal) from Employee

-- avg

select avg(id) from Employee

select avg(Emp_sal) from Employee


-- group by

create Table Student(
	
	RollNO int,
	Name varchar(10),
	City varchar(10),
	Gender varchar(10)
)

insert into Student values(1,'Ajay','Pune','Male')
insert into Student values(2,'Vijay','Pune','Male')
insert into Student values(5,'Akash','Mumbai','Male')
insert into Student values(36,'Snehal','Pune','FeMale')
insert into Student values(32,'Vrushali','Mumbai','FeMale')
insert into Student values(05,'Rutuja','Pune','FeMale')
insert into Student values(18,'Anjali','Pune','FeMale')
insert into Student values(48,'Vivek','Satara','Male')
insert into Student values(28,'Akshay','Satara','Male')


select * from Student

select city ,Gender,count(rollno) from Student group by city,Gender

select Gender,count(Rollno) as total from student group by Gender

select City, count(RollNo)as Total from Student group by City

select Gender,min(rollno) from Student group by Gender

-- select City , count(City) from Student where count(city)>=5 group by city --error

select City ,Count(City) as Total from student where city='Pune' group by City  

select City , count(City) from Student group by City having count(city)>=5


--identity

drop table Student

 create table Students(
 
	id int primary Key Identity(1,1),
	name varchar(10),
	City varchar(10)
 )

 select * from Students

 insert into Students Values(1,'Ajay','Pune') --error

 insert into Students values('Ajay','Pune')
 insert into Students values('Vijay','Satara') 
 insert into Students values('Akshay','Mumbai') 
 insert into Students values('Satara','Pune') 
 insert into Students values('Ajinkya','Satara')  

 select * from Students

 select SCOPE_IDENTITY()
 select @@IDENTITY
 select IDENT_CURRENT('Students')

-- session 2


insert into student values('Ajay','Pune')

select * from Student

create procedure datainsert
as
begin
		insert into Student  values('Ganesh','Beed')
end

execute datainsert

drop procedure datainsert
select SCOPE_IDENTITY()

select @@IDENTITY

select IDENT_CURRENT('Student')

select * from Student


-- session 2


select SCOPE_IDENTITY()
select @@IDENTITY
select IDENT_CURRENT('Students');

create Procedure StudentInsert1
as
begin
	insert into Students values('Akshay','Pune')
end

execute StudentInsert1

select SCOPE_IDENTITY() --null
select @@IDENTITY -- 6
select IDENT_CURRENT('Students') --6



-- main page

insert into Students values('Ganesh' ,'Indapur')
select * from Students

delete from Students where id=2 

select * from Students

insert into Student values(2,'Abhi','Dharashiv')  -- error Explicitly not Added on this way

-- Explicitly Added Rows

-- Imp

set identity_insert Students  on   -- to manage Records in table for insert

set identity_insert Students off    -- to off to inserting records


select * from Students

-- it is Compultion to add by default column name
insert into Students values(15,'Rutuja','Pune') -- error it want specified column

insert into Students (id,name, City)Values(2,'Snehal','Pune')
select * from Students


set identity_insert Students off 

select * from Students

insert into Students values('Omkar','Satara')

select * from Students


-- reset identity

set identity_insert Students  On 
dbcc checkident(Students,reseed,0)

dbcc checkident(Students, reseed, 0)

select SCOPE_IDENTITY() --null
select @@IDENTITY 
select IDENT_CURRENT('Students')--18

drop table Students
delete from students
insert into Students values('sameer','pune')


--set identity_Insert Students On/Off
--dbcc checkident('Students',reseed,0)

