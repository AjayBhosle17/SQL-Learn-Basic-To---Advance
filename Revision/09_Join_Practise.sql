
use ABDTimepass
go


drop table product
drop table ProductSales

create table Product(
	Id int primary key,
	Name varchar(10),
	Price int
)

create table productsales(
	Id int primary key,
	ProductId int,
	Quantity int
)

insert into Product values(1,'mobile',23000),(2,'laptop',34000),(3,'tv',43000)
insert into productsales values(1,1,3),(2,2,2),(3,1,2)

select * from Product
select * from productsales

-- Which Product are sold
select distinct  p.name
from productsales ps join product p
on ps.ProductId=p.Id



-- product name | sold Quantity

select p.name , sum(ps.Quantity) as count
from productsales ps join product p
on ps.ProductId=p.Id
group by p.Name

-- All Product Name | sold quantity
select p.name , sum(ps.Quantity) as count
from productsales ps right join product p
on ps.ProductId=p.Id
group by p.Name


insert into Product values(4,'wear',39000)
insert into productsales values(4,null,4),(5,null,2)

select * from Product
select * from productsales
insert into productsales values(8,24,4)

-- left side data not common data

select *
from productsales ps left join  product p
on Ps.ProductId=p.Id
where p.Id is null


--right side data without common data

select p.* 
from productsales ps right join Product p
on ps.ProductId=p.Id
where ps.Id is null


--both side data without common data

select * 
from productsales ps full join product p
on ps.ProductId=p.Id
where p.Id is null or ps.ProductId is null

--self join

drop table Employee

create table Employee(
	Id int,
	name varchar(10),
	managerId int
)

insert into Employee values(1,'Ajay',2),(2,'Vikul',null),(3,'usha',2),(4,'ashish',5),(5,'Atul',3)

select * from Employee

-- find emplyee name with manager name

select e.name, m.name
from Employee e join Employee m
on e.managerId=m.Id


-- find Employee which have not assign manager
select distinct m.name 
from Employee e join Employee m
on e.managerId=m.id
where m.managerId is null

select m.name ,count(e.id) as Total
from Employee e  right join Employee m
on e.managerId=m.Id
group by m.name


