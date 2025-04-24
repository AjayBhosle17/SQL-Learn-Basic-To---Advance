--transaction

create table studentTrans(
	id int,
	name varchar(10),
	salary int
)

insert into studentTrans values(1,'Ajay',40000),(2,'Vijay',23000),(3,'Akash',35000)

select * from studentTrans

begin transaction
	update studentTrans set name='Datta' where id=2

commit transaction


begin transaction
	update studentTrans set name='Ajay' where id=2

rollback transaction

select * from studentTrans


drop table Account

create table Account(

	id int primary key identity,
	Customer_name varchar(20),
	balance int
)

insert into Account values('Ajay',1000),('Vijay',2000),('Datta',3000)

select * from Account

BEGIN TRY
    BEGIN TRANSACTION;

    -- Insert
    INSERT INTO Account VALUES ('Pravin', 6000);

    -- Update
    UPDATE Account SET balance = balance + 1000 WHERE id = 7; -- yeh error dega kyuki 5 hai nahi abhi

    -- Delete
    DELETE FROM Account WHERE id = 2;

    COMMIT TRANSACTION;
    PRINT 'Transaction Successful!';
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;

    PRINT 'Error Aaya Bhai!';
    PRINT ERROR_MESSAGE();
END CATCH

	

	--real time 

	CREATE TABLE BankAccount(
    AccountId INT PRIMARY KEY IDENTITY,
    CustomerName VARCHAR(50),
    Balance INT
);

INSERT INTO BankAccount (CustomerName, Balance)
VALUES ('Ajay', 5000), ('Vijay', 2000);

SELECT * FROM BankAccount;


SET XACT_ABORT ON;

BEGIN TRY
    BEGIN TRANSACTION;

    -- Check Ajay ka balance
    DECLARE @AjayBalance INT;
    SELECT @AjayBalance = Balance FROM BankAccount WHERE CustomerName = 'Ajay';

    IF (@AjayBalance < 2000)
    BEGIN
        -- Agar paisa kam hai to error throw karenge
        THROW 50001, 'Insufficient Balance', 1;
	   print 'failed'
    END

    -- Ajay ka balance kam karo
    UPDATE BankAccount SET Balance = Balance - 2000 WHERE CustomerName = 'Ajay';

    -- Vijay ka balance badhao
    UPDATE BankAccount SET Balance = Balance + 2000 WHERE CustomerName = 'Vijay';

    COMMIT TRANSACTION;
    PRINT 'Transfer Successful!';
END TRY

BEGIN CATCH
    ROLLBACK TRANSACTION;

    PRINT 'Transaction Failed!';
    PRINT ERROR_MESSAGE();
END CATCH

-- Final Result Check
SELECT * FROM BankAccount;



-- real time

drop table account

create table account(
	Account_No int,
	Name varchar(10),
	balance int check(balance<=10000)
)

select * from account

insert into Account values(1,'Ajay',10000),(2,'Vijay',10000)

-- sp for money transfer

	alter procedure moneyTransfer
	@fromAccount int , @toAccount int , @balance int , @status varchar(30) output
	as
	begin
		begin try
			begin transaction
			update Account set balance =balance-@balance where Account_No=@fromAccount
			
			save  transaction saveData
			update Account set balance = balance+@balance where Account_No=@toAccount


			set @status = 'success'
			commit transaction
		end try

		begin catch
			set @status='Failed'
			rollback transaction savedata
			print error_message();
		end catch
	end

	DECLARE @statu VARCHAR(50);

	EXEC moneyTransfer 
		@fromAccount = 1, 
		@toAccount = 2, 
		@balance =100, 
		@status = @statu OUTPUT;

	PRINT @statu;


	update Account set balance= 2000

	select * from account