

select * from student

alter table student add  salary int

select * from student

insert into student values (4,'yash',3000)

select * from student



create trigger studentTrigger
on student
for insert
as
begin

	print 'student inserted successfully'
end

insert into student values (4,'samir',4000)


alter trigger studentTrigger
on student
for update
as
begin
	print 'student updated successfully'
end


update student set salary =32000 where rollno=1


-- real time example
-- student log


create table studentLog(
	id int identity,
	description varchar(50)
)

select * from studentLog


create trigger triggerstudent
on student
for insert
as
begin
	

	declare @name varchar(40) 
	select @name = name from inserted
	
	declare @description varchar(50) = @name + ' insert successfully'
	
	insert into studentLog values(@description)
end


insert into student  values(7,'Jahid',3000)

select * from student
select *from   studentlog


alter  trigger triggerstudent
on student
for update
as
begin
	

	declare @name varchar(40) 
	select @name = name from inserted
	
	declare @description varchar(50) = @name + ' updated successfully'
	
	insert into studentLog values(@description)

	select * from inserted
	select * from deleted
end

update student set name='vijay' where name='ajay'

