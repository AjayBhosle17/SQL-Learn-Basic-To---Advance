
-- normarlization



-- Department Table (for 3NF)
CREATE TABLE Department (
    DeptID INT PRIMARY KEY IDENTITY,
    DeptName VARCHAR(50) NOT NULL
);

-- Employee Table (for 3NF)
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY IDENTITY,
    EmpName VARCHAR(50) NOT NULL,
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

-- Project Table (for 3NF)
CREATE TABLE Project (
    ProjectID INT PRIMARY KEY IDENTITY,
    ProjectName VARCHAR(100) NOT NULL
);

-- EmployeeProjects Table (for 3NF)
CREATE TABLE EmployeeProjects (
    EmpID INT,
    ProjectID INT,
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID),
    FOREIGN KEY (ProjectID) REFERENCES Project(ProjectID),
    PRIMARY KEY (EmpID, ProjectID)
);



-- Insert Data into Department Table
INSERT INTO Department (DeptName) 
VALUES 
    ('IT'),
    ('HR');

-- Insert Data into Employee Table
INSERT INTO Employee (EmpName, DeptID) 
VALUES 
    ('Ajay', 1), 
    ('Vijay', 2), 
    ('Ramesh', 1);

-- Insert Data into Project Table
INSERT INTO Project (ProjectName) 
VALUES 
    ('FoodiesHub'),
    ('StoryHub'),
    ('HiringAutomation'),
    ('StockManagement');

-- Insert Data into EmployeeProjects Table
INSERT INTO EmployeeProjects (EmpID, ProjectID) 
VALUES 
    (1, 1),  -- Ajay - FoodiesHub
    (1, 2),  -- Ajay - StoryHub
    (2, 3),  -- Vijay - HiringAutomation
    (3, 1),  -- Ramesh - FoodiesHub
    (3, 4);  -- Ramesh - StockManagement


	--relation

	-- Get All Employees with their Department
SELECT E.EmpID, E.EmpName, D.DeptName 
FROM Employee E
JOIN Department D ON E.DeptID = D.DeptID;

-- Get All Employees with their Projects
SELECT E.EmpName, P.ProjectName
FROM Employee E
JOIN EmployeeProjects EP ON E.EmpID = EP.EmpID
JOIN Project P ON EP.ProjectID = P.ProjectID;

-- Get Projects associated with a specific employee (e.g., Employee ID 1)
SELECT P.ProjectName
FROM EmployeeProjects EP
JOIN Project P ON EP.ProjectID = P.ProjectID
WHERE EP.EmpID = 1;
