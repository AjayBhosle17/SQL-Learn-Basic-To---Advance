select * from [dbo].[Products]

select Id, Name, Price as MaxFind
from Products
where Price =(select max(Price) from Products)


select Id, Name, Price as MaxFind
from Products
group by Id,Name, Price
having Price =(select max(Price) from Products)


select * from Products where Name='electronics Laptop'

drop table EMployee
drop table

CREATE TABLE Employee
( 
    Id INT PRIMARY KEY,
    Name VARCHAR(10)
);
drop table [dbo].[Department]
drop table [dbo].[Employee]
CREATE TABLE Department
( 
    Id INT PRIMARY KEY,
    Dep_Name VARCHAR(10),
    Emp_Id INT FOREIGN KEY REFERENCES Employee(Id)
);

-- Insert Employee Data
INSERT INTO Employee (Id, Name) VALUES
(1, 'Ajay'),
(2, 'Vijay'),
(3, 'Vaishnavi'),
(4, 'Siddhu');

-- Insert Department Data

INSERT INTO Department (Id, Dep_Name, Emp_Id) VALUES
(1, 'Software', 1),
(2, 'HR', 2),
(3, 'HR', 3),
(4, 'Engg', 1),
(5, 'Developer', 4);


select e.Name from
Department d join Employee e
on d.Emp_Id=e.Id 
where d.Dep_Name='HR'


