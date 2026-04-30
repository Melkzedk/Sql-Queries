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
Select * from Order;

SHOW TABLES;

SELECT * FROM INFORMATION_SCHEMA.TABLES
WHERE TABLE_TYPE = 'BASE TABLE'; 