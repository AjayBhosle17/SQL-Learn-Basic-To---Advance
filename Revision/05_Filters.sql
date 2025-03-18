use ABDTimepass
drop table student 
drop table trainer

go

create table student(
	Id int primary key,
	Name varchar(10),
	City varchar(14),
	Gender varchar(7),
	Age int
)

insert into student values
(1,'Ajay','Ambajogai','Male',21),
(2,'Vijay','Satara','Male',20),
(3,'Vaishnavi','Pune','FeMale',22),
(4,'jay','Pune','Male',18),
(5,'Om','Ambajogai','Male',16),
(6,'Madhuri','Pune','FeMale',19),
(7,'Anjali','Satara','FeMale',24),
(8,'Siddhu','Ambajogai','Male',20),
(9,'Params','Satara','Male',23)

insert into student values(10,'Params','Satara','MAle',23)
select * from student

select top 5 Id, Name, City from Student

select distinct name,city,gender,age from student


select * from student where city='pune'

select * from student where city='pune' and gender='female'


select name, city, age from student where age>20

select * from student where age between 20 and 30

select name , city , age from student where age!=20

insert into student values(11,'Ajay17','Pune','Male',20)

select * from Student

select name , city,age from student where name like '%[0-9]%'

select name , city,age from student where name like '%a%'
select name , city,age from student where name like 'a%'
select name , city,age from student where name like '%ja%'

select name , city,age from student where name like '%[17]%'

select * from student

select * from student where age in (20,24,23)
select * from student where age between 20 and 24

select name ,city from student order by name asc
select name ,city from student order by  name desc



