drop table trainer
drop table student

create table trainer(
	Id int primary key,
	Name varchar(10),
	Experience int
)

create table student(
	Id int primary key,
	name varchar(10),
	city varchar(10),
	TrainerId int foreign key references trainer(Id)
)

insert into trainer values(1,'Vikul',14),(2,'Usha',3),(3,'Atul',3)

insert into student values(1,'Ajay','Pune',1),(2,'Datta','Ambajogai',2),(3,'Parmesh','Nanded',1),(4,'Vijay','Pune',null),(5,'Snehal','Pune',null)

select * from trainer
select * from student

--join

select s.name as[Student Name] , t.name as [Trainer Name]
from student s inner join trainer t 
on s.TrainerId=t.Id


select s.name as[Student Name] , t.name as [Trainer Name]
from student s  join trainer t 
on s.TrainerId=t.Id



-- left join

select *
from student s left join trainer t
on s.TrainerId=t.Id

select s.*
from student s left join trainer t
on s.TrainerId=t.Id


-- right join

select *
from student s right join trainer t
on s.TrainerId=t.Id

select t.*
from student s right join trainer t
on s.TrainerId=t.Id


-- full outer join

select *
from student s full join trainer t
on s.TrainerId=t.Id

--cross join

select * from student cross join trainer

select  s.name as StudentName , t.name as TrainerName
from student s cross join trainer t