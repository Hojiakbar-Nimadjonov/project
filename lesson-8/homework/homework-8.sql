SELECT 
    a.AuthorName,
    b.BookTitle
FROM AuthorBooks ab
INNER JOIN Authors a ON ab.AuthorID = a.AuthorID
INNER JOIN Books b ON ab.BookID = b.BookID;

SELECT 
    p.ProductName,
    c.CategoryName
FROM Products p
INNER JOIN Categories c ON p.CategoryID = c.CategoryID
WHERE c.CategoryName != 'Ёлектроника';

SELECT 
    o.OrderID,
    p.ProductName,
    o.Quantity
FROM Orders o
CROSS JOIN Products p
WHERE o.Quantity > 100;

SELECT 
    e.EmployeeName,
    d.DepartmentName,
    e.HireDate
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE DATEDIFF(YEAR, e.HireDate, GETDATE()) > 5;

-- INNER JOIN Ч только совпадающие записи
SELECT 
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;

-- LEFT JOIN Ч все сотрудники, включа€ без отдела
SELECT 
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID;

SELECT 
    p.ProductName,
    s.SupplierName
FROM Products p
CROSS JOIN Suppliers s
WHERE p.Category = 'A';

SELECT 
    c.CustomerName,
    COUNT(o.OrderID) AS OrderCount
FROM Customers c
INNER JOIN Orders o ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerName
HAVING COUNT(o.OrderID) >= 10;

SELECT 
    c.CourseName,
    COUNT(sc.StudentID) AS EnrolledStudents
FROM Courses c
LEFT JOIN StudentCourses sc ON c.CourseID = sc.CourseID
GROUP BY c.CourseName;

SELECT 
    e.EmployeeName,
    d.DepartmentName
FROM Employees e
LEFT JOIN Departments d ON e.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'ћаркетинг';

SELECT 
    t1.ColumnA,
    t2.ColumnB
FROM Table1 t1
INNER JOIN Table2 t2 ON t1.Value <= t2.Value;
