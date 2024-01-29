-- Create the database
CREATE DATABASE EmployeeManagementSystem;
USE EmployeeManagementSystem;

-- Create the Department table
CREATE TABLE Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentName NVARCHAR(255)
);

-- Create the Employee table with the Salary column
CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(255),
    LastName NVARCHAR(255),
    Email NVARCHAR(255) UNIQUE,
    PhoneNumber NVARCHAR(15),
    HireDate DATE,
    DepartmentID INT FOREIGN KEY REFERENCES Department(DepartmentID),
    Salary DECIMAL(10, 2)
);

-- Insert data into the Department table
INSERT INTO Department (DepartmentID, DepartmentName) VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance');

-- Insert data into the Employee table
INSERT INTO Employee (EmployeeID, FirstName, LastName, Email, PhoneNumber, HireDate, DepartmentID, Salary) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '2023-01-01', 1, 15000.90),
(2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2023-02-15', 2, 19000.25),
(3, 'Mariko', 'Pratama', 'mariko.pratama@example.com', '123-456-7890', '2023-01-01', 3, 90000.26);

-- Retrieve Data
SELECT * FROM Employee;
SELECT * FROM Employee WHERE DepartmentID = 3;

-- Update Data
UPDATE Employee SET Email = 'mariko.pratama@sunib.ac.id' WHERE EmployeeID = 3;

-- Delete Data
DELETE FROM Employee WHERE EmployeeID = 2;
