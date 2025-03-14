create table Student(
	RollNO int,
	Name varchar(10),
	city varchar(10),
	Gender varchar(10)

)

select * from student

insert into Student values(1,'Ajay','Pune','Male')
insert into Student(RollNO,name,city,Gender) values
(2,'Vijay','Satara','Male'),
(3,'Snehal','Pune','Female')

select * from student

update student set city='mumbai'

update Student set city='pune' where RollNO=2

alter table student add Email varchar(10)

alter table student drop column email

alter table student alter column gender varchar(35)