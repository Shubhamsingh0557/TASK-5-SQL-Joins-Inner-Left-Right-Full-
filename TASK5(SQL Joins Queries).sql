1. Create Customers Table:

    CREATE TABLE Customers (
        CustomerID INT PRIMARY KEY,
        Name TEXT,
        City TEXT
    );

-- Insert Sample Data:


    INSERT INTO Customers (CustomerID,Name,City)VALUES(1, 'Alice', 'New York');
    INSERT INTO Customers (CustomerID,Name,City)VALUES(2, 'Bob', 'Los Angeles');
    INSERT INTO Customers (CustomerID,Name,City)VALUES(3, 'Charlie', 'Chicago');

2. Create Orders Table:

    CREATE TABLE Orders (
        OrderID INT PRIMARY KEY,
        CustomerID INT,
        Product TEXT,
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    );

-- Insert Sample Data:

    INSERT INTO Orders (OrderID,CustomerID,Product)VALUES(101, 1, 'Laptop');
    INSERT INTO Orders (OrderID,CustomerID,Product)VALUES(102, 1, 'Mouse');
    INSERT INTO Orders (OrderID,CustomerID,Product)VALUES(103, 2, 'Keyboard');


2. SQL Join Queries
  
  A. INNER JOIN -(Returns only matching records from both tables.)
  
      SELECT Customers.Name, Orders.Product
      FROM Customers
      INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

  B. LEFT JOIN -(Returns all records from the left table (Customers), and matched records from the right table (Orders).)

      SELECT Customers.Name, Orders.Product
      FROM Customers
      LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

  C. RIGHT JOIN -(Returns all records from the right table (Orders), and matched records from the left table (Customers).)

      SELECT Customers.Name, Orders.Product
      FROM Customers
      RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;

  D. FULL OUTER JOIN -(Returns all records when there is a match in either table.)

-- Simulated FULL OUTER JOIN in SQLite
    
      SELECT Customers.Name, Orders.Product
      FROM Customers
      LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID

      UNION

      SELECT Customers.Name, Orders.Product
      FROM Customers
      RIGHT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


-- MySQL Syntax
    
      SELECT Customers.Name, Orders.Product
      FROM Customers
      FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;
