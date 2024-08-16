use Ajay2024
go

-- subquery

create Table Product(
	Id int Primary Key,
	Name Varchar(20),
	Price Varchar(20)
)

select * from Product

create table ProductSales(
	
	SalesId int Primary Key,
	ProductId int foreign key references Product(id),
	Qunatity int 
)

-- insert in Product
insert into Product Values(1,'Mobile',20000),(2,'Tv',25000),
(3,'Laptop',50000)

-- insert in ProductSales

insert into ProductSales Values(1,1,2),(2,2,1),(3,1,1)

select * from Product
select * from ProductSales

select name from product Name where id in(1,2)

select name from product name where id 
in(select distinct productid from ProductSales)


select name from product name where id not
in(select distinct productid from ProductSales)


-- Product Quentity

select sum(Qunatity) from ProductSales where ProductId=1 

select sum(Qunatity) from ProductSales where ProductId=2  

select sum(Qunatity) from ProductSales where ProductId=3 


select * from Product
select * from ProductSales

select Name,(select sum(Qunatity) from ProductSales where productid=id) from Product


-- product name | Quantity | Total_Price

select name,price,
(select sum(qunatity) as Quantity from productSales where ProductId=id),
(select sum(qunatity)* Product.price as Total_Price from ProductSales where productid=id)from Product 


select name,
(select count(*) as Count from ProductSales where ProductId=id) from Product

select * from product
select * from ProductSales

-- Max
select max(price) from Product

-- second max

select max(price) from Product where  Price < (select max(price) from Product)


select * from Product
select * from ProductSales

--Join

drop table student

create table Trainer(
	Id int Primary Key,
	name varchar(15),
	Experience int
)

insert into Trainer values(1,'Vikul',14),(2,'Shashi',8),(3,'Piyush',10)

create table Student(
	RollNo int Primary key,
	Name Varchar(15),
	City Varchar(20),
	TrainerId int foreign key references Trainer(id)
)

insert into Student values(17,'Ajay','Pune',1),(48,'Vivek','Satara',2),
(22,'Sameer','Pune',1)

select * from Trainer
Select * from Student

insert into Student values(29,'Avishkar','Satara',null),(19,'Omkar','Mumbai',null)

select Student.Name ,Trainer.Name from Student
join Trainer on student.TrainerId=Trainer.Id


select Student.Name as StudentName ,Trainer.Name as TrainerName from Student
join Trainer on student.TrainerId=Trainer.Id


select Student.Name as[Student Name] ,Trainer.Name as [Trainer Name] from Student
join Trainer on student.TrainerId=Trainer.Id


--left join

select * from Student left join Trainer on
Student.TrainerId=Trainer.Id


select student.* from Student left join Trainer on
Student.TrainerId=Trainer.Id

select s.name as [Student Name ] ,t.name as [Trainer name] from 
Student s left Outer Join Trainer t on s.TrainerId=t.Id

select s.name as [Student Name ] ,t.name as [Trainer name] from 
Student s left Join Trainer t on s.TrainerId=t.Id

--right Outer join

select * from Student right join Trainer 
on Student.TrainerId=Trainer.Id


select * from Student right Outer join Trainer 
on Student.TrainerId=Trainer.Id

select s.name as [Student Name] ,t.name as [Trainer Name] from
student s right join trainer t on s.trainerid=t.id


-- full join


select s.name as [Student Name] ,t.name as [Trainer Name] from
student s full join trainer t on s.trainerid=t.id

select * from Student full outer join  Trainer on Student.TrainerId=Trainer.Id


-- cross join

select s.name as [Student name] , t.name as [Trainer name] 
from Student s cross join Trainer t

select * from Student cross join Trainer