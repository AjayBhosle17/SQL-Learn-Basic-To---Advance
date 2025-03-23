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

select * from student
-- city wise minumum age

select gender , min(age) 
from student
group by gender


select city , min(age) 
from student
group by  city


-- city wise no of student return only that city which has equal  or more than 5 student

select city, count(city) as cnt 
from student
group by city 

select city, count(city) as cnt 
from student
group by city 
having count(city)>=4

/*
1. Count Students in Each Course
You have a students table with the following columns:

id (int)

name (varchar)

course (varchar)

👉 Write a query to count how many students are enrolled in each course.*/

SELECT course, COUNT(*) AS student_count  
FROM students  
GROUP BY course;

/*
Output:=> 
📌 Example sales Table
id	product	quantity_sold
1	Laptop	30
2	Phone	50
3	Laptop	40
4	Tablet	20
5	Phone	60
6	Tablet	15
✅ Query Output:
product	total_sold
Laptop	70
Phone	110
Tablet	35
So, only "Phone" will be included in the result because its total quantity sold is 110 (which is ≥ 100).
*/

/*
2. Find Products with High Sales
You have a sales table:

id (int)

product_name (varchar)

quantity_sold (int)

👉 Write a query to find products that have sold more than 100 units.
*/

select product, sum(quantity_sold) from sales
group by product
having sum(quantity_sold)>=100

/* Output=> 
📌 Example sales Table
id	product	quantity_sold
1	Laptop	30
2	Phone	50
3	Laptop	40
4	Tablet	20
5	Phone	60
6	Tablet	15
✅ Expected Output
product	total_sold
Phone	110*/

/*
3. Identify High-Spending Customers
You have a orders table:

order_id (int)

customer_name (varchar)

total_amount (decimal)

👉 Write a query to find customers who have placed at least 5 orders.*/


select customer_name , count(*)
from Orders
group by customer_name
having count(*)>=5

/*
4. Average Salary in Each Department
You have an employees table:

id (int)

name (varchar)

department (varchar)

salary (decimal)

👉 Write a query to calculate the average salary per department, and filter only those departments where the average salary is above 50,000.

*/

SELECT department, AVG(salary) AS avg_salary  
FROM employees  
GROUP BY department  
HAVING AVG(salary) > 50000;



/*5. Most Popular Cities for Customers
You have a customers table:

id (int)

name (varchar)

city (varchar)

👉 Write a query to list only those cities that have at least 10 customers.*/


select city, count(*)
from customers
group by city
having count(*)>=10