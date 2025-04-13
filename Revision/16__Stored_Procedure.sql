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



