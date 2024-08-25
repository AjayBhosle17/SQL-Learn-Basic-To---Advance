use Ajay2024
go

create table Student_data(student_id int primary key,
firstName varchar(10),lastName varChar(10),Gpa float);

insert into Student_data values(201,'Shivansh','Last_Name',8.79),
(202,'Umesh','Sharma',8.44),(203,'Rakesh','Kumar',5.60),(204,'Radha','Sharama',9.20),
(205,'kush','Kumar',7.85),(206,'Prem','Chopra',9.56),(207,'Pankaj','Vats',9.78),
(208,'Navleen','Kaur',7.00),(209,'Ajay','Bhosle',9.17)

select student_id,firstname,lastname,gpa from Student_data


create table Program_Table(
 
	student_id int foreign key references Student_data(student_id),
	program_name varchar(20)
)

 insert into Program_Table values(201,'COmputer Science'),(202,'Mathematics'),
 (208,'Mathematics'),(205,'Physics'),(204,'Chemistry'),(207,'Psychology'),
 (206,'History'),(203,'Biology')


 create table ScolerShip(
 
	Student_ref_id int foreign key references Student_Data(Student_id),
	ScolerShip_Amount int,
	scolership date
 )

 insert into ScolerShip values(201,5000,'2021-10-15 00:00:00')
 
 insert into ScolerShip values(202,4500,'2022-08-18 00:00:00')
 
 insert into ScolerShip values(203,3000,'2022-01-25 00:00:00')
 
 insert into ScolerShip values(201,4000,'2021-10-15 00:00:00')


 select * from Student_data
 select * from Program_Table
 select * from ScolerShip