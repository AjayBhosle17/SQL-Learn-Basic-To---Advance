-- Step 1: Create EmployeeData3 Table
CREATE TABLE EmployeeData3 (
    EmpID INT PRIMARY KEY,
    Name NVARCHAR(100),
    Salary INT
);

-- Step 2: Insert Dummy Data
INSERT INTO EmployeeData3 (EmpID, Name, Salary) VALUES (1, 'Ajay', 30000);
INSERT INTO EmployeeData3 (EmpID, Name, Salary) VALUES (2, 'Ravi', 25000);

-- Step 3: Create DatabaseErrorLogs Table
CREATE TABLE DatabaseErrorLogs (
    ErrorId INT IDENTITY(1,1) PRIMARY KEY,
    ErrorProcedure NVARCHAR(255),
    ErrorMessage NVARCHAR(MAX),
    ErrorState INT,
    ErrorSeverity INT,
    ErrorLine INT,
    ErrorDatetime DATETIME DEFAULT GETDATE()
);

-- Step 4: Create Error Logging Procedure
CREATE PROCEDURE InsertErrorLog
AS
BEGIN
    INSERT INTO DatabaseErrorLogs
    (ErrorProcedure, ErrorMessage, ErrorState, ErrorSeverity, ErrorLine)
    VALUES 
    (
        ERROR_PROCEDURE(),
        ERROR_MESSAGE(),
        ERROR_STATE(),
        ERROR_SEVERITY(),
        ERROR_LINE()
    )
END;

-- Step 5: Create Salary Update Procedure with Error Handling
CREATE PROCEDURE UpdateEmployeeSalary
AS
BEGIN
    BEGIN TRY
        -- Actual Logic
        UPDATE EmployeeData3 SET Salary = Salary + 1000 WHERE EmpID = 2;
    END TRY
    BEGIN CATCH
        -- Insert Error Info to log table
        EXEC InsertErrorLog;
        -- Optionally rethrow the error
        -- THROW;
    END CATCH
END;


-- Step 6: Execute the Procedure
EXEC UpdateEmployeeSalary;

-- Step 7: Check EmployeeData3 Table to see updated salary
SELECT * FROM EmployeeData3;

-- Step 8: Check Error Log Table
SELECT * FROM DatabaseErrorLogs ORDER BY ErrorDatetime DESC;

UPDATE EmployeeData3 SET Salary = Salary + 1000 WHERE EmpID = 2;

ALTER PROCEDURE UpdateEmployeeSalary
AS
BEGIN
    BEGIN TRY
        -- Galat table naam intentionally
        UPDATE EmployeeData3 SET Salary = Salary + 1000 WHERE EmpID = 2;
    END TRY
    BEGIN CATCH
        -- Error log karna
        EXEC InsertErrorLog;
    END CATCH
END;

SELECT * FROM DatabaseErrorLogs ORDER BY ErrorDatetime DESC;


EXEC UpdateEmployeeSalary;
