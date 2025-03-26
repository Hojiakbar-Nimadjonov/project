SELECT TOP(10) ProductID, SUM(SaleAmount) AS TotalSales
FROM Sales
GROUP BY ProductID
ORDER BY TotalSales DESC;

SELECT 
    EmployeeID, 
    CONCAT(ISNULL(FirstName, ''), ' ', ISNULL(LastName, '')) AS FullName,
    DepartmentName, 
    Salary
FROM Employees;

SELECT DISTINCT 
    Category, 
    ProductName, 
    Price
FROM Products_Discounted
WHERE Price > 50;

SELECT *
FROM Products_Discounted
WHERE Price < (SELECT AVG(Price) * 0.1 FROM Products_Discounted);


SELECT *
FROM Employees
WHERE Age < 30 
AND DepartmentName IN ('HR', 'ИТ');

SELECT *
FROM Employees
WHERE Email LIKE '%@gmail.com';

SELECT *
FROM Employees
WHERE Salary > ALL (
    SELECT Salary 
    FROM Employees 
    WHERE DepartmentName = 'Продажи'
);

SELECT *
FROM Sales
WHERE SaleDate BETWEEN DATEADD(DAY, -180, GETDATE()) AND GETDATE();

