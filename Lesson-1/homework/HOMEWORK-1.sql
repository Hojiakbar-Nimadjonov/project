CREATE TABLE �������� (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
SELECT * FROM ��������;
INSERT INTO �������� (StudentID, Name, Age) VALUES (1, '����', 20);
CREATE TABLE ������������� (TeacherID INT PRIMARY KEY, Name VARCHAR(50));
GRANT SELECT ON �������� TO User1;
BEGIN TRANSACTION;
UPDATE �������� SET Age = 21 WHERE StudentID = 1;
COMMIT;
INSERT INTO �������� (StudentID, Name, Age) 
VALUES 
(1, '����', 20),
(2, '����', 22),
(3, '����', 21);

