-- Creating the table with Primary Key, Foreign Key, Unique Key, Composite Key, and Candidate Key

CREATE DATABASE CompanyDB;

USE CompanyDB;

-- Table: Employees
CREATE TABLE Employees (
    EmployeeID INT AUTO_INCREMENT,            -- Primary Key (Uniquely identifies each employee)
    FirstName VARCHAR(100) NOT NULL,
    LastName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE,                -- Unique Key (Ensures each employee has a unique email)
    PhoneNumber VARCHAR(20) UNIQUE,           -- Unique Key (Ensures each employee has a unique phone number)
    DepartmentID INT,                         -- Foreign Key (Links to the Departments table)
    PRIMARY KEY (EmployeeID),                 -- Primary Key (EmployeeID uniquely identifies each record)
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) -- Foreign Key (Links to Departments)
);

-- Table: Departments
CREATE TABLE Departments (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL
);

-- Table: Projects
CREATE TABLE Projects (
    ProjectID INT AUTO_INCREMENT PRIMARY KEY,
    ProjectName VARCHAR(255) NOT NULL,
    DepartmentID INT,                         -- Foreign Key (Links to the Departments table)
    PRIMARY KEY (ProjectID),
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID) -- Foreign Key (Links to Departments)
);

-- Table: EmployeeProjects (Composite Key)
CREATE TABLE EmployeeProjects (
    EmployeeID INT,                           -- Foreign Key (Links to Employees table)
    ProjectID INT,                            -- Foreign Key (Links to Projects table)
    AssignedDate DATE,
    PRIMARY KEY (EmployeeID, ProjectID),      -- Composite Key (Employee and Project combination uniquely identifies a record)
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID), 
    FOREIGN KEY (ProjectID) REFERENCES Projects(ProjectID)
);

-- Inserting sample data into Departments table
INSERT INTO Departments (DepartmentName) VALUES
('Engineering'),
('Marketing'),
('Human Resources');

-- Inserting sample data into Employees table
INSERT INTO Employees (FirstName, LastName, Email, PhoneNumber, DepartmentID) VALUES
('John', 'Doe', 'john.doe@example.com', '123-456-7890', 1),
('Jane', 'Smith', 'jane.smith@example.com', '234-567-8901', 2),
('Alice', 'Brown', 'alice.brown@example.com', '345-678-9012', 3);

-- Inserting sample data into Projects table
INSERT INTO Projects (ProjectName, DepartmentID) VALUES
('AI Development', 1),
('Product Launch', 2),
('Employee Wellness Program', 3);

-- Inserting sample data into EmployeeProjects table
INSERT INTO EmployeeProjects (EmployeeID, ProjectID, AssignedDate) VALUES
(1, 1, '2025-01-01'),
(2, 2, '2025-02-01'),
(3, 3, '2025-03-01');
