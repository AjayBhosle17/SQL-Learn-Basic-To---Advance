
-- stored procedure

drop table student

create table student(
 id int,
 name varchar(10),
 gender varchar(10),
 age int
)

insert into student values(1,'Ajay','male',20),(2,'Vijay','male',22),(3,'Siddhu','male',20)

create procedure uspStudent
as
begin 
	select * from student
end

execute uspStudent

-- simple sp
alter procedure uspStudent
as
begin
	select * from student where age=20
end

execute uspStudent

-- sp with para
create proc uspPassPara
@age int
as
begin
	select * from student where age=@age
end

exec uspPassPara 20


--sp with multiple para

create proc uspPassParaMultiple
@name varchar(9) , @gender varchar(10)
as
begin
	
	select * from student where name=@name and gender=@gender

end

exec uspPassParaMultiple @gender='male',@name='AJay'


-- name se return id

alter proc returnuspId
@name varchar(10)
as
begin
	select id from student where name=@name
end

exec returnuspId @name='Ajay'


-- return  only int
alter procedure UspreturnAndStore
@name varchar(10)
as
begin
     declare @id int
	 select @id=id from student where name=@name
	 return @id
end

declare @data int
exec @data=Uspreturnandstore @name='vijay'
print @data



