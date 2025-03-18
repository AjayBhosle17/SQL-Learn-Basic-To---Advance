
drop table student

create table trainer(
	Id int primary key,
	Name varchar(10),
	Experience int
);

create table student(
	
	rollNo int primary key,
	Name varchar(10),
	gender varchar(10),
	trainerId int foreign key references Trainer(Id)
)

insert into trainer values(1,'Vikul',14),
(2,'usha',5),(3,'shahsi',4)

insert into student (rollNo,Name,gender,trainerId) values(1,'Ajay','male',1),
(2,'Vijay','male',2),(3,'shital','female',null),(4,'Sushant','male',null),(5,'Gauri','male',null)

select * from student
select * from trainer