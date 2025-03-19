CREATE DATABASE practise_1
USE practise_1

CREATE TABLE tables_1 (col1 char(1), col2 char(1));

INSERT INTO tables_1
values
('A', 'B'),
('A', 'C'),
('A', 'B'),
('G', 'D'),
('N', 'M'),
('N', 'G'),
('N', 'M')

SELECT DISTINCT
	col1, col2

FROM tables_1

SELECT col1, col2
FROM tables_1
GROUP BY col1, col2

CREATE TABLE GroupbyMultipleColumns
(
ID INT,
Typ VARCHAR(1),
Value1 VARCHAR(1),
Value2 VARCHAR(1),
Value3 VARCHAR(1)
);
-- Insert Data
INSERT INTO GroupbyMultipleColumns(ID, Typ, Value1, Value2, Value3)
VALUES
(1, 'I', 'a', 'b', ''),
(2, 'O', 'a', 'd', 'f'),
(3, 'I', 'd', 'b', ''),
(4, 'O', 'g', 'l', ''),
(5, 'I', 'z', 'g', 'a'),
(6, 'I', 'z', 'g', 'a');

SELECT COUNT(*) AS cnt
FROM GroupbyMultipleColumns
WHERE Value1 = 'a'	OR Value2 = 'a' OR Value3 = 'a'
GROUP BY Typ;


SELECT 
	typ, 
	SUM(CASE Value1 WHEN 'a' then 1 else 0 end) as val1,
	SUM(CASE Value1 WHEN 'a' then 1 else 0 end) as val2,
	SUM(CASE Value1 WHEN 'a' then 1 else 0 end) as val3,
	SUM(CASE Value1 WHEN 'a' then 1 else 0 end) + 	SUM(CASE Value1 WHEN 'a' then 1 else 0 end) + 	SUM(CASE Value1 WHEN 'a' then 1 else 0 end) as result

FROM GroupbyMultipleColumns
GROUP BY Typ;








--Create table
CREATE TABLE [dbo].[TestMultipleZero]
(
[A] [int] NULL,
[B] [int] NULL,
[C] [int] NULL,
[D] [int] NULL
)
GO
--Insert Data
INSERT INTO [dbo].[TestMultipleZero](A,B,C,D)
VALUES
(0,0,0,1),
(0,0,1,0),
(0,1,0,0),
(1,0,0,0),
(0,0,0,0),
(1,1,1,0)

SELECT * FROM TestMultipleZero














CREATE TABLE TESTDuplicateCount (
ID INT,
EmpName VARCHAR(100),
EmpDate DATETIME
)
--Insert Data
INSERT INTO TESTDuplicateCount(ID,EmpName,EmpDate)
VALUES
(1,'Pawan','2014-01-05'),
(2,'Pawan','2014-03-05'),
(3,'Pawan','2014-02-05'),
(4,'Manisha','2014-07-05'),
(5,'Sharlee','2014-09-05'),
(6,'Barry','2014-02-05'),
(7,'Jyoti','2014-04-05'),
(8,'Jyoti','2014-05-05')

SELECT * FROM TESTDuplicateCount


DELETE FROM TESTDuplicateCount
WHERE empname IN (
    SELECT empname
    FROM TESTDuplicateCount
    GROUP BY empname
    HAVING count(*) = 1 
	);
SELECT * FROM TESTDuplicateCount







CREATE TABLE FruitCount
(
Name VARCHAR(20),
Fruit VARCHAR(25)
);
--Insert Data
INSERT INTO FruitCount(Name, Fruit)
VALUES
('Neeraj', 'MANGO'),
('Neeraj', 'MANGO'),
('Neeraj', 'MANGO'),
('Neeraj', 'APPLE'),
('Neeraj', 'ORANGE'),
('Neeraj', 'LICHI'),
('Neeraj', 'LICHI'),
('Neeraj', 'LICHI'),
('Isha', 'MANGO'),
('Isha', 'MANGO'),
('Isha', 'APPLE'),
('Isha', 'ORANGE'),
('Isha', 'LICHI'),
('Gopal', 'MANGO'),
('Gopal', 'MANGO'),
('Gopal', 'APPLE'),
('Gopal', 'APPLE'),
('Gopal', 'APPLE'),
('Gopal', 'ORANGE'),
('Gopal', 'LICHI'),
('Mayank', 'MANGO'),
('Mayank', 'MANGO'),
('Mayank', 'APPLE'),
('Mayank', 'APPLE'),
('Mayank', 'ORANGE'),
('Mayank', 'LICHI')

SELECT * FROM FruitCount

SELECT Name,
       count(CASE WHEN Fruit = 'MANGO' THEN 1 END) AS MangoCount,
       count(CASE WHEN Fruit = 'APPLE' THEN 1 END) AS APPLECount,
       count(CASE WHEN Fruit = 'LICHI' THEN 1 END) AS LICHICount,
       count(CASE WHEN Fruit = 'ORANGE' THEN 1 END) AS ORANGECount
FROM FruitCount
GROUP BY Name;


 







