
-- Constraint

use Ajay2024
go

-- Not NUll
drop table student

create table Student(
	RollNo int,
	Name varchar(20),
	Email varchar(30)
)

insert into Student (RollNo,Name)values(17,'Ajay')

insert into student values(20,'Krishna','Krish@gmail.com'),(46,'Vivek','Vivek@gmail.com')

select * from Student


insert into student (RollNo,Name)values(04,'Abhi')

select * from Student

 alter table student alter column Email varchar(20) not null;  --2nd way
 
-- Not NUll     
drop table student
create table Student(
	RollNo int,
	Name varchar(20),
	Email varchar(30) Not NUll  --1st way
)

 insert into student values(17,'Ajinkya','ajin@gmail.com')
 
insert into Student (RollNo,Name)values(17,'Ajay') --error

select * from Student

drop table student

-- Primary Key
create table Student(
	RollNo int,
	Name varchar(20),
	Email varchar(30) NOT Null
)

insert into student values(17,'Ajay','ajay@gmail.com'),
(04,'ABhi','Abhi@gmail.com')

select * from Student

insert into student(Name,Email) values('Vijay','Vijay@gmail.com')

select * from Student

drop table student

create table Student(
	RollNo int primary key,
	Name varchar(20),
	Email varchar(30) NOT Null
)


insert into student values(17,'Ajay','ajay@gmail.com'),
(04,'ABhi','Abhi@gmail.com')

select * from Student

insert into student(Name,Email) values('Vijay','Vijay@gmail.com') --error

insert into student values(17,'Vijay','Viay@gmail.com'); --error
insert into Student values(null,'Akshay','Akshay@gmail.com')-- error

insert into Student values(23,'Vijay','Vijay@gmail.com')
select * from Student

drop table student

--unique

create table Student(
	RollNo int primary key,
	Name varchar(20) NOT Null,
	Email varchar(30)  unique 
)

insert into student values(17,'Ajay','ajay@gmail.com'),
(04,'ABhi','Abhi@gmail.com')

insert into student values (27,'Akshay','ajay@gmail.com') --error

insert into student values(19,'Anjali','Anjali@gmail.com')

insert into student values(63,'Vaishnavi',null)

select * from student

insert into student values(9,'Om',null) -- error only allow one null value

select * from student

drop table student

-- default

go

create table Student(
	RollNo int primary key,
	Name varchar(20) NOT Null,
	Email varchar(30)  unique ,
	Course varchar(15) default 'dotnet'
)

insert into student values(17,'Ajay','Ajay@gmail.com') --error

insert into student (RollNo,Name,Email)values(17,'Ajay','Ajay@gmail.com') --error

select * from student

insert into student values(20,'Krishna','Krishna@gmail.com','Java')

select * from student
drop table student

--check constraint

create table Student(
	RollNo int primary key,
	Name varchar(20) NOT Null,
	Email varchar(30)  unique ,
	Course varchar(15) default 'dotnet',
	Gender varchar(10) check ( gender ='Male' or gender='Female') 
)

insert into Student values(17,'Ajay' , 'Ajay@12','React','Male')

select * from student

insert into student values(12,'Bahubali','Bahu@123','Java','Don') --error


drop table student

--Composite constraint

create table Student(
	RollNo int ,
	Name varchar(20) NOT Null,
	Email varchar(30)  unique ,
	Course varchar(15) default 'dotnet',
	mono bigint,
	Gender varchar(10) check ( gender ='Male' or gender='Female'),
	primary key(RollNo,Email,mono)
)

insert into student values(17,'Ajay','Ajay@123','DOtnet',932864132,'Male')
insert into student values(18,'Vijay','Ajay@1234','DOtnet',932864132,'Male')
insert into student values(19,'Akshay','Ajay@1235','DOtnet',932864132,'Male')

select * from student




