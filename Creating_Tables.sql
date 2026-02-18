mysql> CREATE DATABASE online_grocery_store_management_system;
Query OK, 1 row affected (0.04 sec)

mysql> use online_grocery_store_management_system;
Database changed
mysql> -- Customers Table
mysql> CREATE TABLE Customers (
    ->     customer_id INT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     email VARCHAR(100),
    ->     phone VARCHAR(15),
    ->     address VARCHAR(200)
    -> );
Query OK, 0 rows affected (0.09 sec)

mysql> -- Categories Table
mysql> CREATE TABLE Categories (
    ->     category_id INT PRIMARY KEY,
    ->     category_name VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> -- Products Table
mysql> CREATE TABLE Products (
    ->     product_id INT PRIMARY KEY,
    ->     product_name VARCHAR(100),
    ->     price DECIMAL(10,2),
    ->     stock INT,
    ->     category_id INT,
    ->     FOREIGN KEY (category_id) REFERENCES Categories(category_id)
    -> );
Query OK, 0 rows affected (0.14 sec)

mysql> -- Orders Table
mysql> CREATE TABLE Orders (
    ->     order_id INT PRIMARY KEY,
    ->     customer_id INT,
    ->     order_date DATE,
    ->     total_amount DECIMAL(10,2),
    ->     FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
    -> );
Query OK, 0 rows affected (0.12 sec)

mysql> -- Order_items Table
mysql> CREATE TABLE Order_Items (
    ->     order_item_id INT PRIMARY KEY,
    ->     order_id INT,
    ->     product_id INT,
    ->     quantity INT,
    ->     subtotal DECIMAL(10,2),
    ->     FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    ->     FOREIGN KEY (product_id) REFERENCES Products(product_id)
    -> );
Query OK, 0 rows affected (0.13 sec)