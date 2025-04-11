BEGIN TRANSACTION;
-- Ваши INSERT запросы
COMMIT;

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    ManagerID INT,
    JobTitle VARCHAR(100)
);

INSERT INTO Employee (EmployeeID, ManagerID, JobTitle) 
VALUES 
(1001, NULL, 'Президент'),
(2002, 1001, 'Директор'),
(3003, 1001, 'Офис-менеджер'),
(4004, 2002, 'Инженер'),
(5005, 2002, 'Инженер'),
(6006, 2002, 'Инженер');

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

-- Показать таблицу Employee
SELECT * FROM Employee;

-- Показать таблицу Orders
SELECT * FROM Orders;

-- Показать таблицу DMLTable
SELECT * FROM DMLTable;

-- Показать таблицу Student
SELECT * FROM Student;

-- Показать таблицу PlayerScores
SELECT * FROM PlayerScores;

-- Показать таблицу Perosnal
SELECT * FROM Personal;

-- Показать таблицу TestMax
SELECT * FROM TestMax;

-- Показать таблицу Cinema
SELECT * FROM Cinema;

-- Показать таблицу SingleOrder
SELECT * FROM SingleOrder;

-- Показать таблицу Person
SELECT * FROM Person;

-- Показать таблицу Spaceman
SELECT * FROM Spaceman;

-- Показать только имена студентов из таблицы Student
SELECT StudentName FROM Student;

-- Показать заказы с определённым состоянием доставки из таблицы Orders
SELECT * FROM Orders WHERE DeliveryState = 'TX';
