WITH Numbers AS (
    SELECT 1 AS Number
    UNION ALL
    SELECT Number + 1
    FROM Numbers
    WHERE Number < 10
)
SELECT Number FROM Numbers;

WITH Numbers AS (
    SELECT 1 AS Number
    UNION ALL
    SELECT Number * 2
    FROM Numbers
    WHERE Number < 128
)
SELECT Number FROM Numbers;

SELECT EmployeeID, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY EmployeeID;

WITH AvgSalary AS (
    SELECT AVG(Salary) AS AverageSalary
    FROM Employees
)
SELECT * FROM AvgSalary;

SELECT ProductID, MAX(SalesAmount) AS HighestSales
FROM Sales
GROUP BY ProductID;

WITH SalesCount AS (
    SELECT EmployeeID, COUNT(*) AS SalesCount
    FROM Sales
    GROUP BY EmployeeID
)
SELECT E.FirstName, E.LastName
FROM Employees E
JOIN SalesCount SC ON E.EmployeeID = SC.EmployeeID
WHERE SC.SalesCount > 5;

WITH ProductSales AS (
    SELECT ProductID, SUM(SalesAmount) AS TotalSales
    FROM Sales
    GROUP BY ProductID
)
SELECT P.ProductName
FROM Products P
JOIN ProductSales PS ON P.ProductID = PS.ProductID
WHERE PS.TotalSales > 500;

WITH AvgSalary AS (
    SELECT AVG(Salary) AS AverageSalary
    FROM Employees
)
SELECT FirstName, LastName
FROM Employees
WHERE Salary > (SELECT AverageSalary FROM AvgSalary);
SELECT ProductID, SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY ProductID;
WITH NoSales AS (
    SELECT E.EmployeeID
    FROM Employees E
    LEFT JOIN Sales S ON E.EmployeeID = S.EmployeeID
    WHERE S.EmployeeID IS NULL
)
SELECT E.FirstName, E.LastName
FROM Employees E
JOIN NoSales NS ON E.EmployeeID = NS.EmployeeID;
WITH Factorial AS (
    SELECT 1 AS N, 1 AS Fact
    UNION ALL
    SELECT N + 1, Fact * (N + 1)
    FROM Factorial
    WHERE N < 10
)
SELECT * FROM Factorial;
WITH Fibonacci AS (
    SELECT 1 AS N, 1 AS Fib
    UNION ALL
    SELECT N + 1, Fib + (SELECT Fib FROM Fibonacci WHERE N = Fibonacci.N - 1)
    FROM Fibonacci
    WHERE N < 10
)
SELECT * FROM Fibonacci;
WITH RecursiveString AS (
    SELECT 1 AS N, SUBSTRING('abcdefghi', 1, 1) AS Char
    UNION ALL
    SELECT N + 1, SUBSTRING('abcdefghi', N + 1, 1)
    FROM RecursiveString
    WHERE N < LEN('abcdefghi')
)
SELECT * FROM RecursiveString;
WITH SalesRank AS (
    SELECT EmployeeID, SUM(SalesAmount) AS TotalSales,
           RANK() OVER (ORDER BY SUM(SalesAmount) DESC) AS SalesRank
    FROM Sales
    GROUP BY EmployeeID
)
SELECT E.FirstName, E.LastName, SR.TotalSales, SR.SalesRank
FROM Employees E
JOIN SalesRank SR ON E.EmployeeID = SR.EmployeeID;
SELECT TOP 5 EmployeeID, COUNT(*) AS OrderCount
FROM Sales
GROUP BY EmployeeID
ORDER BY OrderCount DESC;
WITH MonthlySales AS (
    SELECT EmployeeID, SUM(SalesAmount) AS SalesAmount, MONTH(SaleDate) AS SaleMonth
    FROM Sales
    GROUP BY EmployeeID, MONTH(SaleDate)
)
SELECT A.EmployeeID, A.SaleMonth, A.SalesAmount - B.SalesAmount AS SalesDifference
FROM MonthlySales A
JOIN MonthlySales B ON A.EmployeeID = B.EmployeeID
WHERE A.SaleMonth = MONTH(GETDATE()) AND B.SaleMonth = MONTH(GETDATE()) - 1;
SELECT P.CategoryID, SUM(SalesAmount) AS CategorySales
FROM Sales S
JOIN Products P ON S.ProductID = P.ProductID
GROUP BY P.CategoryID;
SELECT EmployeeID, 
       SUM(SalesAmount) AS SalesAmount,
       QUARTER(SaleDate) AS SaleQuarter
FROM Sales
GROUP BY EmployeeID, QUARTER(SaleDate)
HAVING SUM(SalesAmount) > 5000;
SELECT TOP 3 EmployeeID, SUM(SalesAmount) AS TotalSales
FROM Sales
WHERE SaleDate > DATEADD(MONTH, -1, GETDATE())
GROUP BY EmployeeID
ORDER BY TotalSales DESC;
WITH NumberSequence AS (
    SELECT '1' AS Sequence
    UNION ALL
    SELECT CONCAT(Sequence, N)
    FROM NumberSequence
    CROSS JOIN (SELECT 1 AS N UNION ALL SELECT 2 UNION ALL SELECT 3 UNION ALL SELECT 4 UNION ALL SELECT 5) N
    WHERE LEN(Sequence) < 5
)
SELECT * FROM NumberSequence;
SELECT EmployeeID, COUNT(*) AS SalesCount
FROM Sales
WHERE SaleDate > DATEADD(MONTH, -6, GETDATE())
GROUP BY EmployeeID
HAVING COUNT(*) = (
    SELECT MAX(SalesCount)
    FROM (SELECT EmployeeID, COUNT(*) AS SalesCount
          FROM Sales
          WHERE SaleDate > DATEADD(MONTH, -6, GETDATE())
          GROUP BY EmployeeID) AS SalesStats
);
WITH RunningTotal AS (
    SELECT 0 AS CurrentSum
    UNION ALL
    SELECT CurrentSum + Count
    FROM RunningTotal
    JOIN Numbers ON Numbers.Id = RunningTotal.CurrentSum
    WHERE CurrentSum + Count BETWEEN 0 AND 10
)
SELECT * FROM RunningTotal;
SELECT S.ScheduleID, 
       ISNULL(A.ActivityName, 'Работа') AS Activity,
       S.StartTime, S.EndTime
FROM Schedule S
LEFT JOIN Activity A ON S.ScheduleID = A.ScheduleID;
WITH DepartmentSales AS (
    SELECT E.DepartmentID, P.ProductID, SUM(S.SalesAmount) AS TotalSales
    FROM Sales S
    JOIN Employees E ON S.EmployeeID = E.EmployeeID
    JOIN Products P ON S.ProductID = P.ProductID
    GROUP BY E.DepartmentID, P.ProductID
)
SELECT D.DepartmentName, P.ProductName, DS.TotalSales
FROM DepartmentSales DS
JOIN Departments D ON DS.DepartmentID = D.DepartmentID
JOIN Products P ON DS.ProductID = P.ProductID;
