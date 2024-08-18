
use Ajay2024

-- Replace NUll Value
-- isnull

create table Order1(
	id int primary Key,
	name varchar(10),
	price int
)
insert into Order1 values(1,'MObile',20000),(2,'TV',30000),(3,'Laptop',35000)

create table User1(
	id int primary key,
	name varchar(10),
	order_id int foreign key references Order1(id)
)

insert into User1 values(17,'Ajay',1),(19,'Vijay',2),(14,'Akash',null),(11,'Akshay',2),(33,'Om',NUll)


select * from Order1
select * from User1


select User1.name as [User name],Order1.name as [Order name] , 
isnull(User1.order_id,99) 
as Order_Id from User1   join Order1 on User1.order_id=Order1.id


select User1.name as [User name],Order1.name as [Order name] , 
isnull(User1.order_id,99) 
as Order_Id from User1 left  join Order1 on User1.order_id=Order1.id

select User1.name as [User name],Order1.name as [Order name] , 
isnull(User1.order_id,99) 
as Order_Id from User1 right  join Order1 on User1.order_id=Order1.id


select * from Order1
select * from User1
--coalesce

select User1.name as [User name],Order1.name as [Order name] , 
coalesce(User1.order_id,99) 
as Order_Id from User1   join Order1 on User1.order_id=Order1.id


select User1.name as [User name],Order1.name as [Order name] , 
coalesce(User1.order_id,99) 
as Order_Id from User1 left  join Order1 on User1.order_id=Order1.id

select User1.name as [User name],Order1.name as [Order name] , 
coalesce(User1.order_id,99) 
as Order_Id from User1 right  join Order1 on User1.order_id=Order1.id



create table Customer
(
Name varchar(50),
PrimaryEmail varchar(50),
AlternateEmail varchar(50),
PrimaryMobile varchar(10),
AlternateMobile varchar(10)
)


insert into Customer values ('akash', 'a@a.com', 'a1@a.com', 123, 456),
('prakash', null, 'p1@p.com', null, 789),
('prathmesh', null, null, 123, null),
('sahil', null, null, null, 456),
('aniket', null, null, null, null)

select * from Customer

select Name,PrimaryEmail,AlternateEmail,PrimaryMobile,AlternateMobile ,coalesce(PrimaryEmail,AlternateEmail,
PrimaryMobile,AlternateMobile,'Email or Mobile Not found') as Communication from Customer

-- case Statement

select * from Employee

select e.name, (case when m.name is null then 'No Manager' else m.name end) from Employee e left join Employee m on e.Managerid=m.id



create table Person
(
Name varchar(50),
Gender varchar(10),
City varchar(50)
)

insert into Person values ('kiran', 'male', 'pune'), ('akash', 'male', 'mumbai'),
('vishal', 'male', 'satara'), ('priyanka', 'female', 'satara'),
('madam maya', 'female', 'pune')

select name , (case when Gender='Male' then 'M'
when Gender='Female' then 'F' else 'other' end)as Modified from Person

update Person set city= (case when city='Pune'then 'Mumbai'
when city='Mumbai' then 'Pune' else city end)

select * from Person

select name , City,(case when city = 'Mumbai' then 'Hometown'
when city='Pune' then 'Education Hub' else City end) as Popularity from Person


select * from EMployee

select e.Name ,(case when m.name is null then 'No manager' else m.name end )
as Manager_Name from Employee e left join Employee m on e.Managerid=m.id


-- union all

create table IT_Student(
	RollNo int Primary Key,
	name varchar(10),
	Gender varchar(10),
	mobno bigint
)

insert into IT_Student values(1,'Ajay','Male',932286),(2,'Vijay','Male',457297)
,(3,'Krishna','Male',1892028),(5,'Snehal','Female',8292792)


--union all  
-- combination of rows
-- both tables every columns date type will be same

create table CS_Student(
	RollNo int Primary Key,
	name varchar(10),
	Gender varchar(10),
	mail varchar(20)
)

insert into CS_Student values(2,'Vijay','Male','Vijay@123'),
(3,'Vrushali','Female','Vrusha@123')

select * from IT_Student
select * from CS_Student

/*
select * from IT_Student
union all    --Error converting data type varchar to bigint.
select * from CS_Student */

select RollNo,name,Gender from  IT_Student
union all
select RollNo,name,Gender from  CS_Student

-- union
-- sort and duplicate records not allow


select RollNo,name,Gender from  IT_Student
union 
select RollNo,name,Gender from  CS_Student

insert into CS_Student values(5,'Vijay','Male',NULL)


select RollNo,name,Gender from  IT_Student
union 
select RollNo,name,Gender from  CS_Student

-- intersect
-- common records only return

select RollNo,name,Gender from  IT_Student
intersect 
select RollNo,name,Gender from  CS_Student

-- except

select * from IT_Student
Select * from CS_Student

select RollNo,name,Gender  from  IT_Student
except
select RollNo,name,Gender from  CS_Student

-- combine column using union

select RollNo,name,Gender,null as mail, mobno from  IT_Student
union all
select RollNo,name,Gender,mail,null as mono from  CS_Student










