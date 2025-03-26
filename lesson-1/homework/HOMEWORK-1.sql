CREATE TABLE Студенты (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
);
SELECT * FROM Студенты;
INSERT INTO Студенты (StudentID, Name, Age) VALUES (1, 'Иван', 20);
CREATE TABLE Преподаватели (TeacherID INT PRIMARY KEY, Name VARCHAR(50));
GRANT SELECT ON Студенты TO User1;
BEGIN TRANSACTION;
UPDATE Студенты SET Age = 21 WHERE StudentID = 1;
COMMIT;
INSERT INTO Студенты (StudentID, Name, Age) 
VALUES 
(1, 'Иван', 20),
(2, 'Анна', 22),
(3, 'Петр', 21);

