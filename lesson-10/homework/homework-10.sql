SELECT o.OrderID, o.OrderDate, c.CustomerName, c.City
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID 
    AND c.City = 'Нью-Йорк' 
    AND (SELECT COUNT(*) FROM Orders WHERE CustomerID = c.CustomerID) > 10;

	SELECT p.ProductName, s.SaleAmount, p.Discount
FROM Products p
LEFT JOIN Sales s ON p.ProductID = s.ProductID 
    AND (p.Category = 'Электроника' OR p.Discount > 0.15);

	SELECT c.CategoryName, t.ProductCount
FROM Categories c
JOIN (
    SELECT CategoryID, COUNT(*) AS ProductCount
    FROM Products
    GROUP BY CategoryID
) t ON c.CategoryID = t.CategoryID;

SELECT e.EmployeeName, t.Salary, t.Department
FROM Employees e
JOIN Temp_Employees t ON e.EmployeeID = t.EmployeeID 
    AND t.Salary > 4000 
    AND t.Department = 'IT';

	SELECT d.DepartmentName, emp.EmployeeCount
FROM Departments d
CROSS APPLY (
    SELECT COUNT(*) AS EmployeeCount
    FROM Employees e
    WHERE e.DepartmentID = d.DepartmentID
) emp;

SELECT o.OrderID, o.OrderAmount, c.CustomerName, c.State
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID 
    AND c.State = 'Калифорния' 
    AND o.OrderAmount > 1000;

	SELECT e.EmployeeName, e.Position, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID 
    AND (d.DepartmentName IN ('Кадры', 'Финансы') OR e.Position = 'Руководитель');

	SELECT c.CustomerName, o.OrderID
FROM Customers c
OUTER APPLY (
    SELECT TOP 1 o.OrderID
    FROM Orders o
    WHERE o.CustomerID = c.CustomerID
) o
WHERE o.OrderID IS NULL;

SELECT p.ProductName, s.SaleAmount, p.Price
FROM Products p
JOIN Sales s ON p.ProductID = s.ProductID 
    AND s.SaleAmount > 100 
    AND p.Price > 50;

SELECT e.EmployeeName, e.Salary, d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID 
    AND (d.DepartmentName IN ('Продажи', 'Маркетинг') OR e.Salary > 6000);


