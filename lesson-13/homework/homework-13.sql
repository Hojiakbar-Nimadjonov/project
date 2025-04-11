BEGIN TRANSACTION;
-- ���� INSERT �������
COMMIT;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    ManagerID INT,
    JobTitle VARCHAR(100)
);

INSERT INTO Employee (EmployeeID, ManagerID, JobTitle) 
VALUES 
(1001, NULL, '���������'),
(2002, 1001, '��������'),
(3003, 1001, '����-��������'),
(4004, 2002, '�������'),
(5005, 2002, '�������'),
(6006, 2002, '�������');

CREATE TABLE Orders (
    CustomerID INT,
    OrderID INT,
    DeliveryState VARCHAR(100) NOT NULL,
    Amount MONEY NOT NULL,
    PRIMARY KEY (CustomerID, OrderID)
);

INSERT INTO Orders (CustomerID, OrderID, DeliveryState, Amount)
VALUES
(1001, 1, 'CA', 340),
(1001, 2, 'TX', 950),
(1001, 3, 'TX', 670),
(1001, 4, 'TX', 860),
(2002, 5, 'WA', 320),
(3003, 6, 'CA', 650),
(3003, 7, 'CA', 830),
(4004, 8, 'TX', 120);

CREATE TABLE DMLTable (
    SequenceNumber INT PRIMARY KEY,
    String VARCHAR(100) NOT NULL
);

INSERT INTO DMLTable (SequenceNumber, String)
VALUES 
(1, 'SELECT'),
(2, 'Product'),
(3, 'UnitPrice'),
(4, 'EffectiveDate'),
(5, 'FROM'),
(6, 'Products'),
(7, 'WHERE'),
(8, 'UnitPrice'),
(9, '> 100');

CREATE TABLE Student (
    StudentName VARCHAR(50) PRIMARY KEY,
    Birthday DATE
);

INSERT INTO Student (StudentName, Birthday) 
VALUES
('Susan', '2015-04-15'),
('Tim', '2015-04-15'),
('Jacob', '2015-04-15'),
('Earl', '2015-02-05'),
('Mike', '2015-05-23'),
('Angie', '2015-05-23'),
('Jenny', '2015-11-19'),
('Michelle', '2015-12-12'),
('Aaron', '2015-12-18');

-- �������� ������� Employee
SELECT * FROM Employee;

-- �������� ������� Orders
SELECT * FROM Orders;

-- �������� ������� DMLTable
SELECT * FROM DMLTable;

-- �������� ������� Student
SELECT * FROM Student;

-- �������� ������� PlayerScores
SELECT * FROM PlayerScores;

-- �������� ������� Perosnal
SELECT * FROM Personal;

-- �������� ������� TestMax
SELECT * FROM TestMax;

-- �������� ������� Cinema
SELECT * FROM Cinema;

-- �������� ������� SingleOrder
SELECT * FROM SingleOrder;

-- �������� ������� Person
SELECT * FROM Person;

-- �������� ������� Spaceman
SELECT * FROM Spaceman;

-- �������� ������ ����� ��������� �� ������� Student
SELECT StudentName FROM Student;

-- �������� ������ � ����������� ���������� �������� �� ������� Orders
SELECT * FROM Orders WHERE DeliveryState = 'TX';
