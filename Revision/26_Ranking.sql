
-- ranking

-- find duplicates

create table #student(
	name varchar(10),
	salary int
)

insert into #student values('Ajay',23000),('siddhu',24000),('vijju',19000),('Vaishu',24000),
('siddhu',25000),('Ajay',55000)

select * from #student

select name,salary,
row_number() over(partition by name,salary  order by name) as srNo
from #student

with cte
as
( 
select name,salary,
row_number() over(partition by name,salary  order by name) as srNo
from #student
)
delete from cte where srno>1

select * from #student


with cte 
as(

	select name,salary,
	ROW_NUMBER() over(order by salary) as rowSrNO,
	rank()  over(order by salary) as rankSrNO,
	DENSE_RANK() over(order by salary) as denseSrNO
	from #student
)


select * from cte 


