
use Ajay2024
go

select * from Product
select * from ProductSales

-- sold
select  distinct name from ProductSales join 
Product on ProductSales.ProductId=product.Id

-- Product name | Sold Quantity

select * from Product
select * from ProductSales

select name ,sum(Qunatity) from ProductSales join product 
on ProductSales.ProductId = Product.Id group by name


-- all product names even if it is not sold

select name ,sum(qunatity) from ProductSales right join Product 
on ProductSales.ProductId = Product.Id group by name


-- inner join

select * from trainer
select * from student


-- give me all students which does not have trainers


select *
from Student s left join Trainer t
on s.TrainerId = t.Id

select student.name as Student_Name from Student left join Trainer
on Student.TrainerId=Trainer.Id where Trainerid is null

select * from student where trainerid is null


-- give me all trainers which does not have any associated students


select * from Trainer
select * from Student

select Trainer.name as [Trainer name] from Student right join Trainer 
on Student.TrainerId=Trainer.id where RollNo is null


-- all students which does not have any trainer and all trainers which does not have any students


select * from Trainer
select * from Student

select * from Student full join Trainer on Student.TrainerId=Trainer.id
where TrainerId is null 


-- can we apply join more than two tables?
-- yes

create table course(
	id int primary key,
	name varchar(20),
	Duration int,
	TrainerId int foreign key references Trainer(id)
)

insert into course values(1,'Dotnet',6,1),(2,'Java',12,2),
(3,'Internship',4,3)

select * from course
select * from Trainer
select * from Student


select s.name as Student_Name , t.name as trainer_name , c.name as Course_Name
from Student s join Trainer t on s.TrainerId= t.id  join course c on c.TrainerId=t.Id


select s.name as Student_Name , t.name as trainer_name , c.name as Course_Name
from Student s left join Trainer t on s.TrainerId= t.id left  join course c on c.TrainerId=t.Id


select s.name as Student_Name , t.name as trainer_name , c.name as Course_Name
from Student s right join Trainer t on s.TrainerId= t.id right join course c on c.TrainerId=t.Id


-- cross join example

create table PrimaryStudent(

	RollNo int primary key,
	name varchar(20),
	Gender varchar(10)
)

insert into PrimaryStudent values(1,'Ajay','Male'),(2,'Vijay','Male'),
(3,'Akshay','Male')


create table Subjects
(
Id int primary key,
Name varchar(50)
)
insert into Subjects values (1, 'english'), (2, 'hindi'), (3, 'marathi'), (4, 'maths'), (5, 'history')

select * from PrimaryStudent
select * from Subjects

select PrimaryStudent.name as Primary_Student ,Subjects.name as 
Subject_Name  from PrimaryStudent cross join Subjects 

delete from Subjects

select PrimaryStudent.name as Primary_Student ,Subjects.name as 
Subject_Name  from PrimaryStudent cross join Subjects 


-- is it mandatory to have primary key foreign key relation for join?
-- no

create table bike(

	id int,
	name varchar(20),
	price int
)
insert into bike values(1,'Hero',120000),(2,'Honda',135000),(3,'TVS',98000)

create table saleBike(
	id int,
	qunatity int
)

insert into saleBike values(1,2),(2,5),(1,3) 

select * from bike
select * from saleBike

select * from bike join saleBike on bike.id=saleBike.id

select * from bike Left join saleBike on bike.id=saleBike.id

select * from bike Right join saleBike on bike.id=saleBike.id

select * from bike cross join saleBike 

-- self join
drop table Employee

create table Employee(
	id int primary Key,
	name varchar(10),
	Managerid int
)

insert into Employee values(1,'Vikul',3),(2,'Shashi',4),(3,'Usha','1'),
(4,'Ghokle',null),(5,'sachin',2),(6,'Ajay',1)

select * from Employee

select e.name as Employee_name ,m.name as Manager_Name from Employee e  
join Employee m on e.Managerid=m.id


select e.name as Employee_name ,m.name as Manager_Name from Employee e  right
join Employee m on e.Managerid=m.id

select e.name as Employee_name ,m.name as Manager_Name from Employee e  
left join Employee m on e.Managerid=m.id


select e.name as Employee_name ,m.name as Manager_Name from Employee e  
cross join Employee m



-- manager name | number of employees reporting to that manager

select m.name as [Manager Name] ,count(e.id)as Total from Employee e  join Employee m
on e.Managerid=m.id group by m.name


select m.name as [Manager Name] ,count(e.id)as Total from Employee e right join Employee m
on e.Managerid=m.id group by m.name