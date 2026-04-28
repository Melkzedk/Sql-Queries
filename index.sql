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


Select * from Customers;
Select * from Order;

SHOW TABLES;

SELECT 