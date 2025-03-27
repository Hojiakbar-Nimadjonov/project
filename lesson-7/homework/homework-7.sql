SELECT 
    ProductCategory,
    AVG(SalesAmount) AS AvgSales
FROM Sales
GROUP BY ProductCategory
HAVING AVG(SalesAmount) > 200;

SELECT 
    EmployeeID,
    SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY EmployeeID
HAVING SUM(SalesAmount) > 5000;

SELECT 
    Department,
    SUM(Salary) AS TotalSalary,
    AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 6000;

SELECT 
    CustomerID,
    MAX(OrderAmount) AS MaxOrder,
    MIN(OrderAmount) AS MinOrder
FROM Orders
GROUP BY CustomerID
HAVING MIN(OrderAmount) >= 50;

SELECT 
    Region,
    SUM(SalesAmount) AS TotalSales,
    COUNT(DISTINCT ProductID) AS ProductCount
FROM Sales
GROUP BY Region
HAVING COUNT(DISTINCT ProductID) > 10;

SELECT 
    ProductCategory,
    ProductID,
    MIN(OrderQty) AS MinOrder,
    MAX(OrderQty) AS MaxOrder
FROM Orders
GROUP BY ProductCategory, ProductID;

SELECT 
    YEAR(SaleDate) AS SaleYear,
    Region,
    SUM(SalesAmount) AS TotalSales
FROM Sales
GROUP BY YEAR(SaleDate), Region;

SELECT 
    SalesID,
    'Q1' AS Quarter,
    Q1 AS SalesAmount
FROM SalesSummary
UNION ALL
SELECT 
    SalesID,
    'Q2' AS Quarter,
    Q2 AS SalesAmount
FROM SalesSummary
UNION ALL
SELECT 
    SalesID,
    'Q3' AS Quarter,
    Q3 AS SalesAmount
FROM SalesSummary
UNION ALL
SELECT 
    SalesID,
    'Q4' AS Quarter,
    Q4 AS SalesAmount
FROM SalesSummary;

SELECT 
    ProductCategory,
    ProductID,
    COUNT(OrderID) AS OrderCount
FROM Orders
GROUP BY ProductCategory, ProductID
HAVING COUNT(OrderID) > 50;

SELECT 
    EmployeeID,
    SUM(CASE WHEN QUARTER(SaleDate) = 1 THEN SalesAmount ELSE 0 END) AS Q1,
    SUM(CASE WHEN QUARTER(SaleDate) = 2 THEN SalesAmount ELSE 0 END) AS Q2,
    SUM(CASE WHEN QUARTER(SaleDate) = 3 THEN SalesAmount ELSE 0 END) AS Q3,
    SUM(CASE WHEN QUARTER(SaleDate) = 4 THEN SalesAmount ELSE 0 END) AS Q4
FROM Sales
GROUP BY EmployeeID;

