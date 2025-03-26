CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    Age INT CHECK (Age >= 18)
);

CREATE TABLE TestTable (
    ID INT IDENTITY(100, 10) PRIMARY KEY
);

CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    PRIMARY KEY (OrderID, ProductID)
);

SELECT ProductName, COALESCE(Price, 0) AS Price
FROM Products;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Email VARCHAR(50) UNIQUE
);

ALTER TABLE Products
ADD CONSTRAINT FK_Category
FOREIGN KEY (CategoryID) 
REFERENCES Categories(CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE;