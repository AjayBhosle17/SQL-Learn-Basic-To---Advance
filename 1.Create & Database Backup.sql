
create database Ajay2024
go

use Ajay2024
execute sp_renamedb Ajay2024, Ajaynew2024;

--one machiene to another machiene migrate database

--Full backup
backup database Ajay2024 to disk = 'D:\Coding2\Ajay V#\SQL.bak'

--differential backup   (repeat user)

backup database Ajay2024 to disk = 'D:\Coding2\Ajay V#\SQL.bak'with differential

--restore

use master

drop database Ajay2024

restore database Ajay2024 from disk = 'D:\Coding2\Ajay V#\SQL.bak'

use Ajay2024
go


