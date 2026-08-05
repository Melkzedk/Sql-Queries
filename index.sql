/* SQL Queries for Customers and Orders Database */
/* This SQL script creates two tables: Customers and Orders. It then populates these tables with sample data and demonstrates various SQL operations, including SELECT statements, JOINs, and the creation of views. The script also includes comments explaining the purpose of views in SQL. */
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductName VARCHAR(100),
    Amount DECIMAL(10,2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);
/*Command to create a new database named testDb and then drop it immediately after. This is often done to demonstrate database creation and deletion operations in SQL. The CREATE DATABASE statement initializes a new database, while the DROP DATABASE statement removes it from the server, including all its data and structures.*/

CREATE DATABASE testDb;
DROP DATABASE testDb;

INSERT INTO Customers (CustomerID, FirstName, LastName, City) VALUES
(1, 'Melk', 'Wafula', 'Nairobi'),
(2, 'Jane', 'Doe', 'Mombasa'),
(3, 'John', 'Smith', 'Kisumu'),
(4, 'Alice', 'Brown', 'Nakuru'),
(5, 'David', 'Otieno', 'Eldoret'),
(6, 'Grace', 'Wanjiku', 'Thika'),
(7, 'Peter', 'Mwangi', 'Nyeri'),
(8, 'Susan', 'Achieng', 'Kakamega'),
(9, 'Brian', 'Kiptoo', 'Kericho'),
(10, 'Lilian', 'Njeri', 'Machakos');


SELECT c.FirstName , c.LastName, c.City, o.ProductName, o.Amount FROM Customers c INNER JOIN Orders o ON c.CustomerID = c.CustomerID;

INSERT INTO Orders (OrderID, CustomerID, ProductName, Amount) VALUES
(101, 1, 'Laptop', 75000),
(102, 2, 'Phone', 30000),
(103, 3, 'Tablet', 25000),
(104, 1, 'Mouse', 1500),
(105, 4, 'Keyboard', 3500),
(106, 5, 'Monitor', 20000),
(107, 6, 'Printer', 18000),  
(108, 7, 'Desk', 12000),
(109, 8, 'Chair', 8000),
(110, 2, 'Headphones', 5000);



Select * from Customers;

Select * from Orders;

SHOW TABLES;

SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE';

SELECT c.FirstName, c.LastName, c.City, o.ProductName, o.Amount FROM Customers c LEFT JOIN Orders o ON c.CustomerID = c.CustomerID;

SELECT c.FirstName, c.LastName, c.City, o.ProductName, o.Amount FROM Customers c Right JOIN Orders o ON c.CustomerID = c.CustomerID;

/* The above queries demonstrate the use of INNER JOIN, LEFT JOIN, and RIGHT JOIN to combine data from the Customers and Orders tables based on the CustomerID. The INNER JOIN returns only matching records, while the LEFT JOIN returns all records from the Customers table and matching records from the Orders table, and the RIGHT JOIN returns all records from the Orders table and matching records from the Customers table. */
CREATE VIEW CustomerOrders AS
SELECT 
    c.FirstName,
    c.LastName,
    c.City,
    o.ProductName,
    o.Amount
FROM Customers c
INNER JOIN Orders o
    ON c.CustomerID = o.CustomerID;

	SELECT * FROM CustomerOrders;


/** Views are virtual tables that are based on the result set of a SELECT statement. They do not store data themselves but provide a way to simplify complex queries and present data in a specific format. Views can be used to encapsulate complex logic, improve security by restricting access to certain columns, and enhance readability by providing a more intuitive interface for querying data.
*/

	CREATE VIEW NairobiCustomers AS
SELECT FirstName, LastName
FROM Customers
WHERE City = 'Nairobi';

SELECT * FROM Orders;


CREATE VIEW HighValueOrders AS
SELECT 
    OrderID,
    CustomerID,
    ProductName,
    Amount
FROM Orders
WHERE Amount >= 10000;

SELECT * FROM HighValueOrders;

CREATE VIEW PremiumCustomerOrders AS
SELECT c.FirstName, c.LastName, c.City, o.ProductName, o.Amount FROM Customers c INNER JOIN Orders o ON c.CustomerID = c.CustomerID
WHERE o.Amount >= 10000;

SELECT * FROM PremiumCustomerOrders;

CREATE TABLE OrderTable(
orderId int PRIMARY KEY,
ProductName varchar (200) NOT NULL,
orderDate date NOT NULL);

INSERT INTO OrderTable (orderId, ProductName, orderDate)
VALUES
(1, 'Laptop', '2026-05-01'),
(2, 'Wireless Mouse', '2026-05-02'),
(3, 'Keyboard', '2026-05-03'),
(4, 'Monitor', '2026-05-04'),
(5, 'USB Flash Drive', '2026-05-05'),
(6, 'Office Chair', '2026-05-06'),
(7, 'Desk Lamp', '2026-05-07'),
(8, 'Printer', '2026-05-08'),
(9, 'Webcam', '2026-05-09'),
(10, 'External Hard Drive', '2026-05-10');

/* The above code creates a new table called OrderTable with three columns: orderId, ProductName, and orderDate. It then inserts 10 records into the OrderTable with different product names and order dates. The orderDate column is of type date, which allows us to perform date-related queries on the data. */

SELECT * FROM OrderTable WHERE orderDate='2026-05-09';

SELECT * FROM OrderTable WHERE orderDate BETWEEN '2026-05-01' AND '2026-05-06';

SELECT * FROM CustomerOrders WHERE Amount BETWEEN 20000 AND 100000;

BACKUP DATABASE LearnSQL
TO DISK = '"D:\SQL BACKUP\LearnSQL.bak"'
WITH DIFFERENTIAL;

SELECT @@VERSION;

/*Schemas */

CREATE DATABASE CompanyDB;

CREATE SCHEMA HR ;

CREATE SCHEMA IT;
 
CREATE SCHEMA Sales;

CREATE SCHEMA Healthcare;

CREATE SCHEMA LFS;

CREATE TABLE HR.Employees (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    Age INT (20),
);
