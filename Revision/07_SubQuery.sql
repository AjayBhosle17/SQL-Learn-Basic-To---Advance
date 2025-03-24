--subquery

create table  Product(
	Id int primary key,
	Name varchar(10),
	Price int
)


create table  ProductSales(
	Id int primary key,
	ProductId int foreign key references Product(Id),
 	Quantity int
)

insert into product values(1,'mobile',24000),(2,'laptop',32000),(3,'Ac',10000)
insert into ProductSales values(1,1,2),(2,2,1),(3,1,1)

select * from Product

select * from ProductSales

select name ,(select count(ProductId) from ProductSales where Product.Id=ProductId) 
from product

select name ,(select sum(Quantity)  from ProductSales where Product.Id=ProductId) as QuantitySale,
(select sum(Quantity)* Product.Price from ProductSales where Product.Id=ProductId) as Total_Quantity
from Product

select max(price) from Product where price < (select max(price) from Product)


SELECT Name 
FROM Product 
WHERE Price = (SELECT MAX(Price) FROM Product WHERE Id IN (SELECT ProductId FROM ProductSales));


select name
from product
where Id in(select ProductId from ProductSales)




SELECT Name  
FROM Product  
WHERE Price = (SELECT MAX(Price) FROM Product);


SELECT Name  
FROM Product where
price=(select  max(price) from product)

select name, price from product where 
price=(select max(price) from product  where price < (select max(price) from Product))





