CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(50),
    Salary DECIMAL(10,2)
);

INSERT INTO Employees (EmpID, Name, Salary)
VALUES (1, 'John Doe', 5000.00);


INSERT INTO Employees (EmpID, Name, Salary)
VALUES 
(2, 'Jane Smith', 6000.00),
(3, 'Mike Johnson', 5500.00);

UPDATE Employees
SET Salary = 5200.00
WHERE EmpID = 1;

DELETE FROM Employees
WHERE EmpID = 2;

DELETE FROM Employees;
TRUNCATE TABLE Employees;
DROP TABLE Employees;
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(100);
ALTER TABLE Employees
ADD Department VARCHAR(50);
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT;
CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(50)
);
DELETE FROM Employees;
