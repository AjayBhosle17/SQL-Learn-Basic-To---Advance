use abdtimepass

drop table student

create table student(
	RollNO int primary key,
	Name varchar(20),
	City varchar(20),
	Gender varchar(10),
	Age int

)

INSERT INTO Student (RollNo, Name, City, Gender, Age) VALUES
(1, 'Krishna', 'Pune', 'Male', 25),
(2, 'Manjiri', 'Satara', 'Female', 22),
(3, 'Vivek', 'Mumbai', 'Male', 30),
(4, 'Ajay', 'Pune', 'Male', 23),
(5, 'Snehal', 'Satara', 'Female', 21),
(6, 'Abhi', 'Mumbai', 'Male', 26),
(7, 'Datta', 'Pune', 'Male', 28),
(8, 'Parmeshwar', 'Satara', 'Male', 19),
(9, 'Shubham', 'Mumbai', 'Male', 27),
(10, 'Rutuja', 'Pune', 'Female', 24),
(11, 'Vaishnavi', 'Satara', 'Female', 20);

-- count


select count(*) as total_count from Student

select count('gender') as male from student where gender='male'
select count('gender') as female from student where gender='female'


SELECT Gender, COUNT(Gender) 
FROM Student 
WHERE Age > 20 
GROUP BY Gender;

-- city wise count
select city, count(city)
from student 
group by city

-- city wise gender wise count
select city , gender , count(rollno)as total 
from student
group by city , gender

-- city wise minumum age

select gender , min(age) 
from student
group by gender


select city , min(age) 
from student
group by  city
