

drop table Product

create table product
(
	id int primary key identity,
	name varchar(10),
	AvailabalQuantity int
)

create table ProductSale(
	
	saleId int primary key identity,
	productId int foreign key references product(id),
	Quantity int
)

insert into Product values('mobile',10),('laptop',5),('tv',7)
insert into ProductSale values(1,3),(2,4),(1,4)

select * from Product
select * from ProductSale


CREATE PROCEDURE sampleLogic
    @name VARCHAR(10),
    @quantity INT,
    @status VARCHAR(50) OUTPUT
AS
BEGIN
    DECLARE @id INT
    DECLARE @availableQty INT

    -- Check if product exists
    IF EXISTS (SELECT * FROM Product WHERE name = @name)
    BEGIN
        -- Get product id and available quantity
        SELECT @id = id, @availableQty = AvailabalQuantity FROM Product WHERE name = @name

        -- Check stock availability
        IF @availableQty >= @quantity
        BEGIN
            -- Update available quantity
            UPDATE Product 
            SET AvailabalQuantity = AvailabalQuantity - @quantity 
            WHERE id = @id

            -- Insert into ProductSale
            INSERT INTO ProductSale (ProductId, Quantity) 
            VALUES (@id, @quantity)

            -- Set success message
            SET @status = 'Product sale successful'
        END
        ELSE
        BEGIN
            -- Set out of stock message
            SET @status = 'Out of stock'
        END
    END
    ELSE
    BEGIN
        -- Product not found
        SET @status = 'Product not found'
    END
END


declare @res varchar(20)
exec sampleLogic @name='LED' ,@quantity=5 , @status =@res output
print @res



declare @res varchar(20)
exec sampleLogic @name='mobile' ,@quantity=5 , @status =@res output
print @res

select * from product
select * from ProductSale