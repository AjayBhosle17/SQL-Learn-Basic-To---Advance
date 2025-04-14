--conditional statement

declare @num1 int=10 , @num2 int=11

if(@num1=@num2)
begin
	print @num1+@num2
end
else
BEGIN
	print @num2-@num1
end



create table users(
	id int identity,
	name varchar(10),
	MOBILE BIGiNT,
	city varchar(20)
)


select * from users

--sp insert

create proc uspRegister
@name varchar(10),
@mobile bigint,
@city  varchar(50),
@status bit output
as
begin

	if (not exists(select id from users where mobile=@mobile))
	
	begin
		insert into users values(@name,@mobile,@city)
		set @status=1
		print 'insert successfully'
	end

	else
	begin
		set @status=0
		print 'users does not  exists'
	end

end


declare @result bit

exec uspRegister @name='Ajay' ,@mobile=1111111111 , @city='pune',@status=@result out
print @result

declare @result bit

exec uspRegister @name='Ajay' ,@mobile=1111111112 , @city='pune',@status=@result out
print @result

declare @result bit

exec uspRegister @name='Ajay' ,@mobile=1111111111 , @city='pune',@status=@result out
print @result


-- update

alter proc uspUpdateUser
	@mobile BIGINT = NULL, 
	@name varchar(10) = 'Ajay' ,
	@city varchar(10)=null
as
begin
	
	if(exists(select * from Users where mobile=@mobile))
	begin
		update Users set name=@name, city=@city where mobile=@mobile
	end 
	else
	begin
		print 'User does not exists plz try again'
	end
end

EXEC uspUpdateUser @mobile = 1111111111, @name = 'Mayur', @city = 'Ambajogai';
select * from Users


-- delete

create proc uspdelete
@mobile varchar(10)
as
begin

	if(exists (select * from Users where mobile=@mobile))
	begin
		delete from Users where mobile=@mobile
		print 'delete Successfully'
	end
	else
	begin
		print 'user does not exists'
	end

end

exec uspdelete 1111111111

select * from Users
