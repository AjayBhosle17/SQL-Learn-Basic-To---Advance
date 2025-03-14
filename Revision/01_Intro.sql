Create Database ABDTimepass
use ABDTimepass
create table Employee(
	Id int primary key , Name varchar(20) , CreatedDate datetime, isLogged bit
	
);

alter table Employee alter column createdDate date;

select * from Employee

INSERT INTO Employee (Id, Name, CreatedDate, isLogged)
VALUES
(1, 'John Doe', '2025-02-01', 1),
(2, 'Jane Smith', '2025-02-02', 0),
(3, 'Alice Brown', '2025-02-03', 1),
(4, 'Bob Johnson', '2025-02-04', 1),
(5, 'Charlie Davis', '2025-02-05', 0),
(6, 'Eve White', '2025-02-06', 1),
(7, 'Frank Miller', '2025-02-07', 0),
(8, 'Grace Wilson', '2025-02-08', 1),
(9, 'Hank Moore', '2025-02-09', 0),
(10, 'Ivy Taylor', '2025-02-10', 1);


select * from Employee

select * from Employee where isLogged=1

select * from Employee where Id  between 1 and 5 

alter table Employee add salary int

Update Employee set Salary= 200 where Salary is null 

Update Employee Set Name='Ajay' , CreatedDate='2025-02-01' where Id=4
select * from Employee

create table manager(

	Id int primary key identity(10,1),
	Name varchar(20),
	salary int
);

insert into manager (Name,salary) values('Ajay',500000),('Vivek' ,400000),('Vivek' ,400000)

select * from manager

truncate table manager 

delete from manager where id=13

select * from manager where salary>450000

EXEC sp_rename 'manager.salary', 'salary1';
EXEC sp_rename 'manager.salary1', 'salary';
select * from manager


