

create table users(
id int identity primary key,
fullname varchar(20),
email varchar(10)
)

select * from users

alter view vw_users
as
select id, fullname,email from users

insert into vw_users values(1,'ajay','aja@gmail.com')

create trigger usersTrigger
on vw_users
instead of insert
as
begin
	insert into users(fullname,email)
	select Fullname,email from inserted
end


INSERT INTO vw_Users (FullName, Email)
VALUES ('Ajay Bhosle', 'ajay@a.com');

select * from vw_users

delete from users where id=2

select * from users



--object ddl command LOGS STORE
CREATE TABLE DatabaseChangesLogs (
    LogId INT IDENTITY PRIMARY KEY,
    EventType NVARCHAR(100),
    ObjectName NVARCHAR(100),
    SQLCommand NVARCHAR(MAX),
    EventDate DATETIME DEFAULT GETDATE(),
    LoginName NVARCHAR(100)
);

CREATE TRIGGER trg_DatabaseDDLLog
ON DATABASE 
FOR CREATE_TABLE, ALTER_TABLE, DROP_TABLE, CREATE_VIEW, ALTER_VIEW, DROP_VIEW
AS
BEGIN
    INSERT INTO DatabaseChangesLogs (EventType, ObjectName, SQLCommand, EventDate, LoginName)
    SELECT 
        EVENTDATA().value('(/EVENT_INSTANCE/EventType)[1]', 'NVARCHAR(100)'),
        EVENTDATA().value('(/EVENT_INSTANCE/ObjectName)[1]', 'NVARCHAR(100)'),
        EVENTDATA().value('(/EVENT_INSTANCE/TSQLCommand/CommandText)[1]', 'NVARCHAR(MAX)'),
        GETDATE(),
        SYSTEM_USER;
END;

CREATE TABLE TestDDL (
    Id INT
);

SELECT * FROM DatabaseChangesLogs



-- cte

select * from Product


create table productData(
	id int primary key identity,
	name varchar(30),
	price int
)

INSERT INTO productData (name, price) VALUES
('iPhone 15 Pro', 140000),
('Samsung Galaxy S24', 120000),
('OnePlus 12', 95000),
('Google Pixel 8 Pro', 115000),
('Nothing Phone 2', 50000);




select * from productData

WITH ExpensiveProducts AS (
    SELECT id, name, price
    FROM productData
    WHERE price > 100000
)
SELECT * FROM ExpensiveProducts;

WITH TotalPrice AS (
    SELECT SUM(price) AS TotalProductPrice
    FROM productData
)
SELECT * FROM TotalPrice;


WITH DuplicateProducts AS (
    SELECT id,name,count(1) as productCount
    FROM productData
    GROUP BY id,name
    HAVING COUNT(*) > 1
)	
select * from DuplicateProducts

WITH DuplicateNames AS (
    SELECT name
    FROM productData
    GROUP BY name
    HAVING COUNT(*) > 1
)
SELECT p.id, p.name, p.price
FROM productData p
INNER JOIN DuplicateNames dn ON p.name = dn.name;


alter trigger demo
on student
for insert
as
begin
print 'trigger fired'
	insert into student values(10,'Datta',2000)
end

select * from student
	insert into student values(10,'Datta',2000)
