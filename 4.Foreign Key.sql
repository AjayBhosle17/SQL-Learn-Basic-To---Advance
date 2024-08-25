
--foreign key

use Ajay2024
go

create table Trainer(
	
	Id int Primary key,
	Name varchar(10),
	Gender varchar(10),
	Experience int
)

create table Student(

	RollNo int Primary Key,
	Name varchar(10),
	Gender varchar(10),
	TrainerId int foreign key references Trainer(Id)
)
select *from Trainer
select * from student

insert into Trainer values(1,'Vikul','Male',14),(2,'Shashi' ,'Male',7)
,(3,'Usha','FEMale',3);

insert into Trainer values(4,'Malhari','Male',5)

insert into student values(17,'Ajay','Male',1),(20,'Krishna','Male',2)
,(36,'Vijay','Female',3)
-- insert into student values(19,'Anjali','FeMale',10) --error

 insert into student values(54,'vivek','Male',2) 

insert into student values(11,'Zahid','Male',1) 

select *from Trainer
select * from student

delete from Trainer where id=4  

delete from Trainer where id=3  

drop table Student
drop table Trainer

--set null
create table Trainer(
	
	Id int Primary key,
	Name varchar(10),
	Gender varchar(10),
	Experience int
)

create table Student(

	RollNo int Primary Key,
	Name varchar(10),
	Gender varchar(10),
	TrainerId int foreign key references Trainer(Id) on delete set null
)
select *from Trainer
select * from student

insert into Trainer values(1,'Vikul','Male',14),(2,'Shashi' ,'Male',7)
,(3,'Usha','FEMale',3);

insert into Trainer values(4,'Malhari','Male',5)

insert into student values(17,'Ajay','Male',1),(20,'Krishna','Male',2)
,(36,'Vijay','Female',3)

insert into student(RollNo,name,gender) values(54,'vivek','Male') 

insert into student values(11,'Zahid','Male',null) 

select *from Trainer
select * from student

delete from Trainer where id=4

select *from Trainer
select * from student

delete from Trainer where id=3


select *from Trainer
select * from student

update Trainer set Id=1 where id=2 --error

update Student set TrainerId=2 where RollNo=36


select *from Trainer
select * from student

delete from Trainer where id=2


select *from Trainer
select * from student

-- default

drop table STudent
drop table trainer



create table Trainer(
	
	Id int Primary key,
	Name varchar(10),
	Gender varchar(10),
	Experience int
)

create table Student(

	RollNo int Primary Key,
	Name varchar(10),
	Gender varchar(10),
	TrainerId int default 1 foreign key references Trainer(Id) on delete set default 
)
select *from Trainer
select * from student

insert into Trainer values(1,'Vikul','Male',14),(2,'Shashi' ,'Male',7)
,(3,'Usha','FEMale',3);

insert into Trainer values(4,'Malhari','Male',5)

insert into student values(17,'Ajay','Male',1),(20,'Krishna','Male',2)
,(36,'Vijay','Female',3)

insert into student values(54,'vivek','Male',2) 

insert into student values(11,'Zahid','Male',1) 


select *from Trainer
select * from student

delete from Trainer where id=2


select *from Trainer
select * from student



-- cascade

drop table STudent
drop table trainer



create table Trainer(
	
	Id int Primary key,
	Name varchar(10),
	Gender varchar(10),
	Experience int
)

create table Student(

	RollNo int Primary Key,
	Name varchar(10),
	Gender varchar(10),
	TrainerId int foreign key references Trainer(Id) on delete cascade 
)
select *from Trainer
select * from student

insert into Trainer values(1,'Vikul','Male',14),(2,'Shashi' ,'Male',7)
,(3,'Usha','FEMale',3);

insert into Trainer values(4,'Malhari','Male',5)

insert into student values(17,'Ajay','Male',1),(20,'Krishna','Male',2)
,(36,'Vijay','Female',3)

insert into student values(54,'vivek','Male',2) 

insert into student values(11,'Zahid','Male',1) 


select *from Trainer
select * from student

delete from Trainer where id=2


select *from Trainer
select * from student

update Student set TrainerId=3 where RollNo=17


select *from Trainer
select * from student

delete from Trainer where id=4

select *from Trainer
select * from student


delete from Trainer where id=3


select *from Trainer
select * from student
alter table student alter column name varchar(20) not null
--forign key with alter table

alter table Student add constraint forign_key  foreign key(trainerId) references Trainer(id)

create table paidfees(

	fees int,
	name varchar(20),
	id int foreign key references Student(RollNO)
)

drop table paidfees