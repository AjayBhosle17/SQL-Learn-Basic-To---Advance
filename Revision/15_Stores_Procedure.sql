
-- stored procedure

--output para

drop table student

create table student(
   rollno int,
   name varchar(10)
)

insert into student values (1,'Ajay'),(2,'Vijay'),(3,'Datta')

select * from student

create procedure uspGetnameByRollno
@rollno int,  @name varchar(10) output
as
begin
	select @name=name from student where  rollno= @rollno
end

declare @result varchar(10)
exec uspGetnameByRollno @rollno=3 ,@name=@result output
print @result



--optional para

create table Shirts(
	id int,
	brand varchar(10),
	size varchar(5),
	price int,
	color varchar(10)
)

INSERT INTO Shirts (id, brand, size, price, color) VALUES (1, 'Nike', 'M', 1500, 'Black');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (2, 'Adidas', 'L', 1600, 'White');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (3, 'Puma', 'S', 1400, 'Blue');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (4, 'Zara', 'M', 1800, 'Green');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (5, 'H&M', 'XL', 1200, 'Gray');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (6, 'Nike', 'L', 1500, 'Red');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (7, 'Levis', 'M', 1700, 'Black');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (8, 'Adidas', 'S', 1600, 'Yellow');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (9, 'Zara', 'M', 1800, 'White');
INSERT INTO Shirts (id, brand, size, price, color) VALUES (10, 'Puma', 'L', 1400, 'Blue');

select * from Shirts
select * from Shirts where brand ='zara'

alter PROCEDURE UspFlipkartShirt
    @brand VARCHAR(10) = 'zara',
    @size VARCHAR(5) = NULL,
    @price INT = NULL,
    @color VARCHAR(10) = NULL
AS
BEGIN
    SELECT * 
    FROM Shirts
    WHERE (@brand IS NULL OR brand = @brand)
      AND ( size = @size or @size IS NULL )
      AND (@price IS NULL OR price between 0  and  @price)
      AND (@color IS NULL OR color = @color)
END

select * from 


exec UspFlipkartShirt

EXEC UspFlipkartShirt @brand = 'Puma', @size = 'S';

EXEC UspFlipkartShirt 'Nike', 'M', 1500, 'Black';
 
Exec UspFlipkartShirt @price=2000


