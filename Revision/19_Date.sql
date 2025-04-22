select GETDATE()

declare @temp date = '16-02-2022'
print @temp

select DATEADD(year,5,getdate())
select DATEADD(month,2,getdate())

declare @temp date = '2022-12-12'

select DATEDIFF(year,@temp,getdate())

select DATEPART(day,getdate())