
--index

drop table v#Employee

create table v#employee(
	id int,
	name varchar(20),
	salary int
)

insert into v#employee values(8,'Ajay',23000),(1,'Vijay',24560),(3,'Datta',12000),(9,'Sagar',32000)

select * from v#employee

--clusterd index
create clustered index Ix_Employee_salary
on v#Employee(salary desc)


create clustered index Ix_Employee_name
on v#Employee(name )

select * from v#employee

select name,salary
from v#employee where salary=(select max(salary) from v#employee where salary < 
(select max(salary) from v#employee))



alter UNIQUE index  Ix_Non_clusterd
on v#employee(id)

CREATE UNIQUE  INDEX IX_Employee_Sal
ON v#employee (name);

drop table v#employee

-- non clustered  non unique
create index ix_Sal
on v#Employee (salary desc)

SELECT * FROM v#Employee WHERE name = 'Ajay';

insert into v#Employee values (6,'Ajay',23000)

delete from v#Employee where id=6

-- non clustered unique

create unique index ix_name
on v#Employee (name desc)

insert into v#Employee values (6,'Ajay',23000)


create unique index ix_salary
on v#Employee (salary desc)


-- clustered unique

create  clustered  index ix_sal1
on v#Employee (salary)

select * from v#Employee
 
 
create unique clustered  index ix_name1
on v#Employee (name)


