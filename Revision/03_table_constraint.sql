
drop table student

create table student(
	rollno int primary key,
	name varchar(10) not null,
	mono varchar(10) unique,
	course varchar(10) default 'DotNet',
	Age int check (age>=1 and age<=140),
	Gender varchar(10) check(gender='male' or gender='female')
);

select * from student
insert into student values(1,'Ajay' , '9322864132' ,'.Net' , 20,'male')
insert into student values(2,'Vijay' , null ,'.Net' , 20,'male')