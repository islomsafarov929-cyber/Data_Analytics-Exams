/*
Guidelines:
There are 5 puzzles in the practical part of the exam.
Provide your solution for each puzzle in the 
solution sections.

Before the start don't forget to create 
the "finalexam" database using the 
query below:
*/

create database finalexam
go
use finalexam


-----------------------------------------------------------------------------------------------------------------------

--PUZZLE 1:
/*
Using Orders, Payments, Customers table List customers who have made an order, 
but no payment has been recorded for it.
*/

--1. Create Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(100),
    LastName VARCHAR(100),
    Email VARCHAR(100),
    Phone VARCHAR(50),
    Address VARCHAR(255),
    City VARCHAR(100),
    State VARCHAR(100),
    PostalCode VARCHAR(20),
    Country VARCHAR(100)
);

--2. Insert 40 Rows into Customers Table
INSERT INTO Customers (CustomerID, FirstName, LastName, Email, Phone, Address, City, State, PostalCode, Country) VALUES
(1, 'John', 'Doe', 'johndoe@gmail.com', '555-1234', '123 Elm St', 'New York', 'NY', '10001', 'USA'),
(2, 'Jane', 'Smith', 'janesmith@yahoo.com', '555-2345', '456 Oak St', 'Los Angeles', 'CA', '90001', 'USA'),
(3, 'Alice', 'Johnson', 'alicej@outlook.com', '555-3456', '789 Pine St', 'Toronto', 'ON', 'M4B1B3', 'Canada'),
(4, 'Bob', 'Brown', 'bobbrown@hotmail.com', '555-4567', '101 Maple St', 'Vancouver', 'BC', 'V5K0A1', 'Canada'),
(5, 'Charlie', 'Davis', 'charliedavis@gmail.com', '555-5678', '202 Birch St', 'Sydney', 'NSW', '2000', 'Australia'),
(6, 'David', 'Martinez', 'davidm@live.com', '555-6789', '303 Cedar St', 'Melbourne', 'VIC', '3000', 'Australia'),
(7, 'Emily', 'Garcia', 'emilyg@yahoo.com', '555-7890', '404 Redwood St', 'London', 'England', 'SW1A 1AA', 'UK'),
(8, 'Frank', 'Hernandez', 'frankh@outlook.com', '555-8901', '505 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'),
(9, 'Grace', 'Lopez', 'gracel@gmail.com', '555-9012', '606 Aspen St', 'Birmingham', 'England', 'B1 1AA', 'UK'),
(10, 'Helen', 'Gonzalez', 'heleng@yahoo.com', '555-0123', '707 Fir St', 'Berlin', 'BE', '10117', 'Germany'),
(11, 'Irene', 'Perez', 'irenep@hotmail.com', '555-1234', '808 Maple Ave', 'Munich', 'BY', '80331', 'Germany'),
(12, 'Jack', 'Wilson', 'jackw@live.com', '555-2345', '909 Oak Ave', 'Hamburg', 'HH', '20095', 'Germany'),
(13, 'Kim', 'Anderson', 'kima@gmail.com', '555-3456', '111 Pine Ave', 'Paris', 'Île-de-France', '75001', 'France'),
(14, 'Liam', 'Thomas', 'liamt@yahoo.com', '555-4567', '222 Cedar Ave', 'Lyon', 'Auvergne-Rhône-Alpes', '69001', 'France'),
(15, 'Megan', 'Taylor', 'megant@outlook.com', '555-5678', '333 Redwood Ave', 'Marseille', 'Provence-Alpes-Côte Azur', '13001', 'France'),
(16, 'Nathan', 'Moore', 'nathanm@hotmail.com', '555-6789', '444 Willow Ave', 'Tokyo', 'TK', '100-0001', 'Japan'),
(17, 'Olivia', 'Jackson', 'oliviaj@gmail.com', '555-7890', '555 Birch Ave', 'Osaka', 'OS', '530-0001', 'Japan'),
(18, 'Paul', 'White', 'paulw@yahoo.com', '555-8901', '666 Maple Blvd', 'Kyoto', 'KY', '600-8001', 'Japan'),
(19, 'Quincy', 'Lee', 'quincyl@outlook.com', '555-9012', '777 Oak Blvd', 'Seoul', 'SO', '04547', 'South Korea'),
(20, 'Rachel', 'Harris', 'rachelh@hotmail.com', '555-0123', '888 Pine Blvd', 'Busan', 'BU', '48058', 'South Korea'),
(21, 'Sam', 'Clark', 'samc@gmail.com', '555-1234', '999 Cedar Blvd', 'Incheon', 'IC', '22382', 'South Korea'),
(22, 'Tina', 'Allen', 'tinaallen@yahoo.com', '555-2345', '1010 Redwood Blvd', 'Mexico City', 'CMX', '01000', 'Mexico'),
(23, 'Ursula', 'Scott', 'ursulas@outlook.com', '555-3456', '1111 Willow Blvd', 'Guadalajara', 'JAL', '44100', 'Mexico'),
(24, 'Victor', 'Adams', 'victora@hotmail.com', '555-4567', '1212 Birch Blvd', 'Monterrey', 'NLE', '64000', 'Mexico'),
(25, 'Walter', 'Baker', 'walterb@live.com', '555-5678', '1313 Oak Blvd', 'New York', 'NY', '10001', 'USA'),
(26, 'Xander', 'Nelson', 'xandern@gmail.com', '555-6789', '1414 Cedar Blvd', 'Los Angeles', 'CA', '90001', 'USA'),
(27, 'Yvonne', 'Carter', 'yvonnec@yahoo.com', '555-7890', '1515 Maple Dr', 'Chicago', 'IL', '60601', 'USA'),
(28, 'Zane', 'Mitchell', 'zanem@outlook.com', '555-8901', '1616 Redwood Dr', 'Houston', 'TX', '77001', 'USA'),
(29, 'Anna', 'Roberts', 'annar@hotmail.com', '555-9012', '1717 Willow Dr', 'Sydney', 'NSW', '2000', 'Australia'),
(30, 'Ben', 'King', 'benk@live.com', '555-0123', '1818 Birch Dr', 'Melbourne', 'VIC', '3000', 'Australia'),
(31, 'Chloe', 'Green', 'chloeg@gmail.com', '555-1234', '1919 Oak Dr', 'Toronto', 'ON', 'M4B1B3', 'Canada'),
(32, 'Daniel', 'Evans', 'daniele@yahoo.com', '555-2345', '2020 Cedar Dr', 'Vancouver', 'BC', 'V5K0A1', 'Canada'),
(33, 'Ella', 'Collins', 'ellac@outlook.com', '555-3456', '2121 Redwood Dr', 'London', 'England', 'SW1A 1AA', 'UK'),
(34, 'Finn', 'Morris', 'finnm@hotmail.com', '555-4567', '2222 Willow St', 'Manchester', 'England', 'M1 1AE', 'UK'),
(35, 'Grace', 'Lee', 'gracel@live.com', '555-5678', '2323 Birch St', 'Berlin', 'BE', '10117', 'Germany'),
(36, 'Holly', 'Martinez', 'hollym@gmail.com', '555-6789', '2424 Oak St', 'Munich', 'BY', '80331', 'Germany'),
(37, 'Ian', 'Robinson', 'ianr@yahoo.com', '555-7890', '2525 Cedar St', 'Warsaw', 'WA', '00-001', 'Poland'),
(38, 'Jasmine', 'Walker', 'jasminew@outlook.com', '555-8901', '2626 Redwood St', 'Lisbon', 'LI', '1100-148', 'Portugal'),
(39, 'Kyle', 'Young', 'kyley@hotmail.com', '555-9012', '2727 Willow St', 'Pittsburgh', 'PA', '15201','USA'),
(40, 'Liam', 'Harris', 'liamh@live.com', '555-0123', '2828 Birch St', 'Richmond', 'VA', '23220','USA');

DROP TABLE IF EXISTS Payments;
DROP TABLE IF EXISTS Orders;

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    ProductID INT NULL,
    OrderDate DATE,
    Quantity INT,
    TotalAmount DECIMAL(10, 2)
);

-- Insert 40 rows into Orders with randomized IDs and NULL ProductIDs for some
INSERT INTO Orders VALUES
(102, 15, 2, '2023-05-14', 1, 800.00),
(205, 8, 3, '2024-09-07', 2, 800.00),
(311, 22, 4, '2022-11-22', 1, 250.00),
(421, 33, 5, '2021-03-30', 3, 150.00),
(523, 40, NULL, '2025-07-19', 1, 30.00),
(610, 19, 7, '2022-08-25', 2, 300.00),
(728, 14, 8, '2024-06-10', 1, 200.00),
(812, 27, 9, '2021-12-04', 4, 40.00),
(915, 6, 10, '2023-02-18', 1, 10.00),
(1003, 31, NULL, '2025-09-27', 2, 360.00),
(1108, 12, 12, '2023-10-11', 1, 500.00),
(1205, 29, 13, '2024-04-03', 1, 25.00),
(1354, 4, 14, '2022-07-29', 2, 60.00),
(1411, 9, 15, '2021-01-22', 3, 135.00),
(1533, 23, NULL, '2025-11-15', 1, 80.00),
(1622, 36, 17, '2022-10-08', 1, 60.00),
(1710, 1, 18, '2023-06-21', 2, 40.00),
(1845, 20, 19, '2021-09-13', 5, 50.00),
(1908, 37, 20, '2025-03-05', 2, 50.00),
(2042, 10, 21, '2024-08-14', 1, 60.00),
(2157, 13, 22, '2022-12-01', 1, 100.00),
(2268, 35, 23, '2023-09-09', 1, 15.00),
(2349, 7, 24, '2021-07-18', 2, 180.00),
(2481, 17, NULL, '2025-06-23', 3, 15.00),
(2594, 5, 26, '2023-03-12', 4, 100.00),
(2633, 26, 27, '2022-04-07', 1, 450.00),
(2782, 39, 28, '2024-11-30', 1, 600.00),
(2845, 24, 29, '2021-02-25', 1, 500.00),
(2903, 2, 30, '2025-05-28', 2, 240.00),
(3011, 16, 31, '2023-08-20', 1, 350.00),
(3152, 21, 32, '2022-01-17', 1, 450.00),
(3227, 38, 33, '2025-09-10', 1, 40.00),
(3368, 11, 34, '2021-04-04', 2, 100.00),
(3419, 3, 35, '2024-07-15', 3, 120.00),
(3551, 18, 36, '2022-10-31', 1, 60.00),
(3684, 32, 37, '2023-12-22', 1, 35.00),
(3749, 28, 38, '2021-06-06', 2, 110.00),
(3872, 25, NULL, '2025-02-01', 1, 40.00),
(3911, 30, 40, '2023-11-26', 3, 120.00),
(4057, 22, 1, '2024-03-09', 1, 1200.00);

DROP TABLE IF EXISTS Payments;

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY,
    OrderID INT NULL,
    PaymentDate DATE,
    Amount DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);

-- Insert 30 payments, some without matching orders
INSERT INTO Payments VALUES
(501, 102, '2023-05-15', 800.00, 'Credit Card'),
(502, 205, '2024-09-08', 800.00, 'PayPal'),
(503, 311, '2022-11-23', 250.00, 'Bank Transfer'),
(504, NULL, '2024-01-05', 500.00, 'Cash'),
(505, 421, '2021-03-31', 150.00, 'Credit Card'),
(506, 610, '2022-08-26', 300.00, 'Debit Card'),
(507, 728, '2024-06-11', 200.00, 'PayPal'),
(508, NULL, '2023-12-20', 75.00, 'Bank Transfer'),
(509, 915, '2023-02-19', 10.00, 'Cash'),
(510, 1003, '2025-09-28', 360.00, 'Credit Card'),
(511, 1108, '2023-10-12', 500.00, 'PayPal'),
(512, 1205, '2024-04-04', 25.00, 'Debit Card'),
(513, 1354, '2022-07-30', 60.00, 'Credit Card'),
(514, NULL, '2024-02-17', 1200.00, 'Wire Transfer'), 
(515, 1411, '2021-01-23', 135.00, 'Bank Transfer'),
(516, NULL, '2023-06-29', 150.00, 'PayPal'), 
(517, 1622, '2022-10-09', 60.00, 'Cash'),
(518, 1710, '2023-06-22', 40.00, 'Debit Card'),
(519, 1845, '2021-09-14', 50.00, 'Credit Card'),
(520, NULL, '2025-01-18', 95.00, 'Bank Transfer'); 

--SOLUTION:
SELECT C.CustomerID,
       CONCAT_WS(' ', C.FirstName, C.LastName) AS CustomerName
FROM Customers C
JOIN Orders O ON C.CustomerID = O.CustomerID
LEFT JOIN Payments P ON O.OrderID = P.OrderID
WHERE P.OrderID IS NULL;


-------------------------------------------------------------------------------------------------------------------------------
--PUZZLE 2:
/*
Retrieve employees earning more than the average salary in their department. 
Tables: employees (columns: id, name, salary, department_id)
*/

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    department_id INT
);

INSERT INTO employees (id, name, salary, department_id) VALUES
(1, 'Mike', 50000, 1),
(2, 'Nina', 75000, 1),
(3, 'Olivia', 40000, 2),
(4, 'Paul', 55000, 2);

--SOLUTION:

SELECT * FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees d WHERE e.department_id = d.department_id GROUP BY department_id);
 

-------------------------------------------------------------------------------------------------------------------------------
--PUZZLE 3:
/*
Create a CTE to find employees with salaries above the average salary.(Employees)
*/
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    DepartmentID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Salary DECIMAL(10, 2)
);

INSERT INTO Employees (EmployeeID, DepartmentID, FirstName, LastName, Salary) VALUES
(1, 1, 'John', 'Doe', 60000.00),
(2, 1, 'Jane', 'Smith', 65000.00),
(3, 2, 'James', 'Brown', 70000.00),
(4, 3, 'Mary', 'Johnson', 75000.00),
(5, 4, 'Linda', 'Williams', 80000.00),
(6, 2, 'Michael', 'Jones', 85000.00),
(7, 1, 'Robert', 'Miller', 55000.00),
(8, 3, 'Patricia', 'Davis', 72000.00),
(9, 4, 'Jennifer', 'García', 77000.00),
(10, 1, 'William', 'Martínez', 69000.00);

---SOLUTION:
--1.
;WITH CTE AS (SELECT AVG(salary) AS AVG_SALARY FROM employees)
SELECT * FROM employees
WHERE salary > (SELECT AVG_SALARY FROM CTE);

--2.
WITH CTE AS (SELECT * FROM employees
WHERE salary > (SELECT AVG(salary) FROM employees))

SELECT * FROM CTE;


-----------------------------------------------------------------------------------------------------------------------------

--PUZZLE 4:
/*
Write an SQL statement that returns 
the vendor from which each customer has placed the most orders

Input:

|Order ID   | Customer ID | Order Count|     Vendor     |
---------------------------------------------------------
|Ord195342  |     1001    |      12    |  Direct Parts  |
|Ord245532  |     1001    |      54    |  Direct Parts  |
|Ord344394  |     1001    |      32    |     ACME       |
|Ord442423  |     2002    |      7     |     ACME       |
|Ord524232  |     2002    |      16    |     ACME       |
|Ord645363  |     2002    |      5     |  Direct Parts  |

Expected Output:

| CustomerID | Vendor       |
|------------|--------------|
| 1001       | Direct Parts |
| 2002       | ACME         |

Explanation: Customer with 1001 ID made 66 orders for Direct Parts and 32 orders for ACME,
So in the output, we should see 1001 | Direct Parts.

*/

CREATE TABLE Orders1 (
  OrderID    INTEGER PRIMARY KEY,
  CustomerID INTEGER NOT NULL,
  [Count]    MONEY NOT NULL,
  Vendor     VARCHAR(100) NOT NULL
);
INSERT INTO Orders1 VALUES
(1,1001,12,'Direct Parts'), (2,1001,54,'Direct Parts'), (3,1001,32,'ACME'),
(4,2002,7,'ACME'), (5,2002,16,'ACME'), (6,2002,5,'Direct Parts');

--SOLUTION:
;WITH CTE AS(
SELECT CustomerID, Vendor ,SUM([COUNT]) TOTAL_ORDER FROM Orders1 GROUP BY CustomerID, Vendor),
CTE1 AS (SELECT CustomerID, Vendor, DENSE_RANK() OVER (PARTITION BY CustomerID ORDER BY TOTAL_ORDER DESC) DR FROM CTE)

SELECT CustomerID, Vendor FROM CTE1
WHERE DR = 1;

---------------------------------------------------------------------------------------------------------------------


--PUZZLE 5:
/*
List fibonacci numbers in the range between 1 and 100. Only in select statement.
The Fibonacci sequence begins with the following 14 integers: 0, 1, 1, 2, 3, 5, 8
*/

--SOLUTION:
WITH CTE AS 
(
SELECT 0 AS FibonacciNumbers, 1 AS N
UNION ALL
SELECT N, FibonacciNumbers + N  FROM CTE
WHERE FibonacciNumbers + N <= 100
)
SELECT FibonacciNumbers FROM CTE;

---------------------------------------END OF EXAM--------------------------------------------------------------------------------
