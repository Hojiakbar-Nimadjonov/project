SELECT e.EmployeeName, e.Salary
FROM Employees e
WHERE e.Salary > (SELECT AVG(Salary) FROM Employees);

SELECT o.OrderID, o.OrderDate, o.OrderAmount
FROM Orders o
LEFT JOIN Payments p ON o.OrderID = p.OrderID
WHERE o.OrderDate < '2023-01-01' AND p.PaymentID IS NULL;

SELECT p.ProductName, c.CategoryName
FROM Products p
FULL OUTER JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName IS NULL;

SELECT e1.EmployeeName, e2.EmployeeName AS Manager, e1.Salary
FROM Employees e1
JOIN Employees e2 ON e1.ManagerID = e2.EmployeeID
WHERE e1.Salary > 5000;

SELECT e.EmployeeName, d.DepartmentName
FROM Employees e
RIGHT JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName LIKE 'M%';
