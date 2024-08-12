
use Ajay2024
go

-- Create table

create table Student(
	RollNo int,
	Name varchar(20),
	Gender varchar(10),
	City varchar(20)
)

-- reading data or records

select RollNo ,Name , Gender , City from Student

-- insert data

insert into Student(RollNo,Name,Gender,City)values(17,'Ajay','Male','Ambajogai')

select RollNo ,Name , Gender , City from Student

-- insert multiple records

insert into Student values(20,'Krishna' ,'Male' ,'Manchar'),
						  (04,'Abhinanadan','Male', 'Dharashiv'),
						  (48,'Vivek' ,'Male','Satara')

					
insert into Student values(66,'Shubham' ,'Male' ,'Pune'),
						   (36,'Snehal' , 'female','Pune')	

select RollNo ,Name , City , Gender from Student

--modify records

update Student set city='None' where city='Pune'

select RollNo ,Name , City , Gender from Student

-- delete records

delete from Student where RollNo=36


select RollNo ,Name , City , Gender from Student

-- add new column

alter table student add  Email varchar(20)

select * from Student

-- drop column

alter table student drop column gender

select * from Student

-- alter column means datatype change

alter table Student alter column City varchar(40)

--rename

-- execute sp_rename 'Student' ,'Student2024'

-- execute sp_rename 'dbo.Student', 'dbo.Student2024'

--delete
-- it works row by row delete

delete from Student where rollno=20
select *from Student

--truncate
--it works by delete all records but recreate table on same schema 
truncate table Student

select *from Student
