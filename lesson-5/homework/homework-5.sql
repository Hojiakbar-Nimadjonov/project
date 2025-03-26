SELECT ProductName, Price, Category, StockQuantity  
FROM Products  
INTERSECT  
SELECT ProductName, Price, Category, StockQuantity  
FROM Products_Discounted;

SELECT SaleID, CustomerID, SaleAmount,  
    CASE  
        WHEN SaleAmount > 500 THEN 'Верхнего уровня'  
        WHEN SaleAmount BETWEEN 200 AND 500 THEN 'Среднего уровня'  
        ELSE 'Низкого уровня'  
    END AS SaleLevel  
FROM Sales;

SELECT CustomerID  
FROM Orders  
EXCEPT  
SELECT CustomerID  
FROM Invoices;

SELECT CustomerID, Quantity,  
    CASE  
        WHEN Quantity > 3 THEN 3  
        WHEN Quantity BETWEEN 1 AND 3 THEN 5  
        ELSE 7  
    END AS DiscountPercent  
FROM Orders;

CREATE TABLE Sales (
    SaleID INT PRIMARY KEY,
    CustomerID INT,
    SaleAmount DECIMAL(10, 2)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT,
    Quantity INT
);

CREATE TABLE Invoices (
    InvoiceID INT PRIMARY KEY,
    CustomerID INT
);

