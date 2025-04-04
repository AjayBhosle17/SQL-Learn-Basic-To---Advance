use ABDTimepass
-- Replace NUll Value

--isNull
select e.name as [Employee Name] ,ISNULL(m.name,'Owner')as [Employee Name]
from Employee e  left join employee m
on e.managerId = m.Id

--coalesce

select e.name as [Employee Name] ,coalesce(m.name,'Malak')as [Employee Name]
from Employee e  left join employee m
on e.managerId = m.Id

--case statement

Create table Customer(
	Id int,
	Name Varchar(10),
	Gender Varchar(10),
	City varchar(10)
)

insert into Customer values(1,'AJay','Male','Pune'),(2,'Snehal','Female','Mumbai'),
(3,'Vijay','Male','Thane'),(4,'ShriRam','male','Pune')

select * from Customer

select id,name,(case 
when gender='male' then 'm'
when gender='Female' then 'f'
when gender='cc' then 'fool'
else 'UnKnown'
end) as modified, 
city from Customer

update Customer set City=(case
	when city='pune' then 'mumbai'
	when city = 'mumbai' then 'Pune'
	else City
	end
)

select * from Customer

--union



create table b23Student
(
	Id int,
	Name varchar(10),
	Age int
)

create table b24Student
(
	Id int,
	Name varchar(10),
	Age int
)

insert into b23Student values(1,'Akshay',24),(2,'Akshda',22),(3,'Ajay',20),(4,'Vijay',30)

insert into b24Student values(1,'Ajay',20),(2,'Params',20),(3,'Manjiri',28),(4,'Avi',28)



select * from b23Student
union
select * from b24Student


select name,age from b23Student
union 
select name,age from b24Student

-- unionall



select name,age from b23Student
union all
select name,age from b24Student



select name,age from b23Student
intersect
select name,age from b24Student

select name,age from b23Student
except
select name,age from b24Student