
create table ProductInfo(
	Id int Primary Key,
	Name varchar(10),
	Price int
)

select * from ProductInfo


insert into ProductInfo values(1,'Shirt', 200),(2,'Grocerry',100),(3,'Mobile',400),(4,'Laptop',350)


select * from ProductInfo

select Max(Price) as Second_Max from (select distinct Price from Product)as distinctPrice  Where Price<(select max(Price)from Product) 

select Max(Price) as Second_Max from ProductInfo where Price <(select max(Price) from ProductInfo) 

update ProductInfo set Name='grocerry',Price=400 where Id=2 

select max(price) from ProductInfo 

select * from ProductInfo join Product on  ProductInfo.Id=Product.Id
