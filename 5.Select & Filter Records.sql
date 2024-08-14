
use Ajay2024

--top Keyword


create table Student(
	RollNo int,
	Name Varchar(10),
	City Varchar(10),
	Gender Varchar(10)
)

insert into Student values(17,'Ajay','Ambajogai','Male');
insert into Student values(48,'Vivek','satara','Male');
insert into Student values(19,'Anjali','Pune','FeMale');
insert into Student values(36,'Snehal','Pune','FeMale');
insert into Student values(04,'Abhi','Pune','Male');
insert into Student values(20,'Krishna','Pune','Male');
insert into Student values(51,'Shubham','Satara','Male');
insert into Student values(01,'Shivanjali','Pune','FeMale');
insert into Student values(32,'Vrushali','Pune','FeMale');
insert into Student values(21,'Vijay','Ambajogai','Male');
insert into Student values(05,'Rutuja','Pune','FeMale');

insert into Student values(17,'Vikas','Ambajogai','Male');
insert into Student values(20,'Akash','Satara','Male');


select rollNo,Name,City,Gender from Student

select top 5 rollNo,Name,City from Student
select top 25 rollNo,Name,City from Student

--distinct (only unique)
insert into Student values (17,'ajay','Ambajogai','Male');

select * from Student
select distinct RollNo,Name,City,Gender from Student

--Filter Records
--where clause

select RollNo,Name,City from Student where city='Pune'

select RollNo,Name,City from Student where city<>'Pune'

select RollNo,Name,City from Student where city!='Pune'


select RollNo,Name,City ,Gender from Student where city='Pune' and Gender ='Male' 

select RollNo,Name,City from Student where RollNo between 1 and 20


select RollNo,Name,City from Student where RollNo not between 1 and 20

select Rollno,name,City from Student where RollNo>=10 and RollNo<=24

select RollNo,Name,City from Student where RollNo=17 or RollNo=04 or RollNo=36 

select RollNo,Name,City from Student where Rollno in(17,4,36)


--Like (Search)

select RollNo,Name,City from Student where name like 'A'

select RollNo,Name,City from Student where name like 'A%'

select RollNo,Name,City from Student where name like '%i'

select RollNo,Name,City from Student where name like '%jay%'


select RollNo,Name,City from Student where name like '_h%'

insert into Student values(13,'Ajay007','Pune','Male')

select * from student where name like '%[0-9]%'

select * from student where name like '%[ja]%'

-- order by

select Rollno,Name,City,Gender from Student order by RollNO

select ROllNo,Name,City,Gender from Student order by RollNO,City, Gender

select RollNO,Name, CIty from Student order by Rollno desc