
--cursor

create table employeeSal(
	id int primary key identity,
	name varchar(10),
	salary int
)


insert into employeeSal values('Ajay',34000),('Vijay',24000),('Siddhu',45000)

select * from employeeSal

update employeeSal set salary=salary+1000

declare @salary int
declare @Empid int
declare EmployeeCursor cursor for

select id,salary from employeeSal

open employeecursor

fetch next from employeecursor into @empid ,@salary

while(@@FETCH_STATUS=0)
begin

	update employeeSal set salary=salary+1000
	where id=@Empid
	fetch next from employeecursor into @empid, @salary
end
close employeecursor
deallocate employeecursor

select * from employeeSal


