mysql> -- Inserting Data Into Customers Table
mysql> INSERT INTO Customers VALUES
    -> (1, 'Ramesh', 'ramesh@gmail.com', '9876543210', 'Hyderabad'),
    -> (2, 'Suresh', 'suresh@gmail.com', '9123456780', 'Vijayawada'),
    -> (3, 'Anjali', 'anjali@gmail.com', '9988776655', 'Guntur'),
    -> (4, 'Praveen', 'praveen@gmail.com', '9012345678', 'Warangal'),
    -> (5, 'Kavya', 'kavya@gmail.com', '8899776655', 'Nellore'),
    -> (6, 'Mahesh', 'mahesh@gmail.com', '7788996655', 'Kurnool'),
    -> (7, 'Lakshmi', 'lakshmi@gmail.com', '6677889900', 'Rajahmundry'),
    -> (8, 'Srikanth', 'srikanth@gmail.com', '5566778899', 'Tirupati'),
    -> (9, 'Ravi', 'ravi@gmail.com', '9988665544', 'Ongole'),
    -> (10, 'Divya', 'divya@gmail.com', '8877665544', 'Eluru');
Query OK, 10 rows affected (0.04 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> -- Inserting Data Into Categories Table
mysql> INSERT INTO Categories VALUES
    -> (1, 'Fruits'),
    -> (2, 'Vegetables'),
    -> (3, 'Dairy'),
    -> (4, 'Bakery'),
    -> (5, 'Beverages'),
    -> (6, 'Snacks'),
    -> (7, 'Frozen Foods'),
    -> (8, 'Personal Care'),
    -> (9, 'Household Items'),
    -> (10, 'Grains');
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> -- Inserting Data Into Products Table
mysql> INSERT INTO Products VALUES
    -> (101, 'Apple', 120.00, 50, 1),
    -> (102, 'Banana', 40.00, 100, 1),
    -> (103, 'Tomato', 30.00, 80, 2),
    -> (104, 'Milk', 60.00, 40, 3),
    -> (105, 'Bread', 35.00, 60, 4),
    -> (106, 'Soft Drink', 45.00, 90, 5),
    -> (107, 'Potato Chips', 20.00, 150, 6),
    -> (108, 'Ice Cream', 90.00, 30, 7),
    -> (109, 'Soap', 25.00, 70, 8),
    -> (110, 'Rice', 65.00, 200, 10);
Query OK, 10 rows affected (0.04 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> -- Inserting Data Into Orders Table
mysql> INSERT INTO Orders VALUES
    -> (201, 1, '2025-01-10', 300.00),
    -> (202, 2, '2025-01-11', 190.00),
    -> (203, 3, '2025-01-12', 310.00),
    -> (204, 4, '2025-01-13', 150.00),
    -> (205, 5, '2025-01-14', 220.00),
    -> (206, 6, '2025-01-15', 180.00),
    -> (207, 7, '2025-01-16', 260.00),
    -> (208, 8, '2025-01-17', 140.00),
    -> (209, 9, '2025-01-18', 200.00),
    -> (210, 10, '2025-01-19', 275.00);
Query OK, 10 rows affected (0.04 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> -- Inserting Data Into Orders Items
mysql> INSERT INTO Order_Items VALUES
    -> (1, 201, 101, 2, 240.00),
    -> (2, 201, 102, 1, 40.00),
    -> (3, 202, 103, 3, 90.00),
    -> (4, 203, 104, 2, 120.00),
    -> (5, 204, 105, 2, 70.00),
    -> (6, 205, 106, 4, 180.00),
    -> (7, 206, 107, 5, 100.00),
    -> (8, 207, 108, 2, 180.00),
    -> (9, 208, 109, 3, 75.00),
    -> (10, 209, 110, 2, 130.00),
    -> (11, 210, 101, 1, 120.00);
Query OK, 11 rows affected (0.04 sec)
Records: 11  Duplicates: 0  Warnings: 0