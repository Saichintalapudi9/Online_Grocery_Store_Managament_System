
mysql> -- Queries
mysql> -- Easy
mysql> -- 1. Display all customers
mysql> SELECT * FROM Customers;
+-------------+----------+--------------------+------------+-------------+
| customer_id | name     | email              | phone      | address     |
+-------------+----------+--------------------+------------+-------------+
|           1 | Ramesh   | ramesh@gmail.com   | 9876543210 | Hyderabad   |
|           2 | Suresh   | suresh@gmail.com   | 9123456780 | Vijayawada  |
|           3 | Anjali   | anjali@gmail.com   | 9988776655 | Guntur      |
|           4 | Praveen  | praveen@gmail.com  | 9012345678 | Warangal    |
|           5 | Kavya    | kavya@gmail.com    | 8899776655 | Nellore     |
|           6 | Mahesh   | mahesh@gmail.com   | 7788996655 | Kurnool     |
|           7 | Lakshmi  | lakshmi@gmail.com  | 6677889900 | Rajahmundry |
|           8 | Srikanth | srikanth@gmail.com | 5566778899 | Tirupati    |
|           9 | Ravi     | ravi@gmail.com     | 9988665544 | Ongole      |
|          10 | Divya    | divya@gmail.com    | 8877665544 | Eluru       |
+-------------+----------+--------------------+------------+-------------+
10 rows in set (0.00 sec)

mysql> -- 2. Display all products with price greater than 50
mysql> SELECT product_name, price
    -> FROM Products
    -> WHERE price > 50;
+--------------+--------+
| product_name | price  |
+--------------+--------+
| Apple        | 120.00 |
| Milk         |  60.00 |
| Ice Cream    |  90.00 |
| Rice         |  65.00 |
+--------------+--------+
4 rows in set (0.03 sec)

mysql> -- 3. Display all categories
mysql> SELECT * FROM Categories;
+-------------+-----------------+
| category_id | category_name   |
+-------------+-----------------+
|           1 | Fruits          |
|           2 | Vegetables      |
|           3 | Dairy           |
|           4 | Bakery          |
|           5 | Beverages       |
|           6 | Snacks          |
|           7 | Frozen Foods    |
|           8 | Personal Care   |
|           9 | Household Items |
|          10 | Grains          |
+-------------+-----------------+
10 rows in set (0.00 sec)

mysql> -- 4. Display products with stock less than 50
mysql> SELECT product_name, stock
    -> FROM Products
    -> WHERE stock < 50;
+--------------+-------+
| product_name | stock |
+--------------+-------+
| Milk         |    40 |
| Ice Cream    |    30 |
+--------------+-------+
2 rows in set (0.00 sec)

mysql> -- 5. Display all orders
mysql> SELECT * FROM Orders;
+----------+-------------+------------+--------------+
| order_id | customer_id | order_date | total_amount |
+----------+-------------+------------+--------------+
|      201 |           1 | 2025-01-10 |       300.00 |
|      202 |           2 | 2025-01-11 |       190.00 |
|      203 |           3 | 2025-01-12 |       310.00 |
|      204 |           4 | 2025-01-13 |       150.00 |
|      205 |           5 | 2025-01-14 |       220.00 |
|      206 |           6 | 2025-01-15 |       180.00 |
|      207 |           7 | 2025-01-16 |       260.00 |
|      208 |           8 | 2025-01-17 |       140.00 |
|      209 |           9 | 2025-01-18 |       200.00 |
|      210 |          10 | 2025-01-19 |       275.00 |
+----------+-------------+------------+--------------+
10 rows in set (0.00 sec)

mysql> -- 6. Display product names in ascending order
mysql> SELECT product_name
    -> FROM Products
    -> ORDER BY product_name ASC;
+--------------+
| product_name |
+--------------+
| Apple        |
| Banana       |
| Bread        |
| Ice Cream    |
| Milk         |
| Potato Chips |
| Rice         |
| Soap         |
| Soft Drink   |
| Tomato       |
+--------------+
10 rows in set (0.03 sec)

mysql> -- 7. Display customers from Hyderabad
mysql> SELECT * FROM Customers
    -> WHERE address = 'Hyderabad';
+-------------+--------+------------------+------------+-----------+
| customer_id | name   | email            | phone      | address   |
+-------------+--------+------------------+------------+-----------+
|           1 | Ramesh | ramesh@gmail.com | 9876543210 | Hyderabad |
+-------------+--------+------------------+------------+-----------+
1 row in set (0.00 sec)

mysql> -- 8. Display order IDs and total amounts
mysql> SELECT order_id, total_amount
    -> FROM Orders;
+----------+--------------+
| order_id | total_amount |
+----------+--------------+
|      201 |       300.00 |
|      202 |       190.00 |
|      203 |       310.00 |
|      204 |       150.00 |
|      205 |       220.00 |
|      206 |       180.00 |
|      207 |       260.00 |
|      208 |       140.00 |
|      209 |       200.00 |
|      210 |       275.00 |
+----------+--------------+
10 rows in set (0.00 sec)

mysql> -- MEDIUM
mysql> -- 1. Display product name with category name
mysql> SELECT p.product_name, c.category_name
    -> FROM Products p
    -> JOIN Categories c ON p.category_id = c.category_id;
+--------------+---------------+
| product_name | category_name |
+--------------+---------------+
| Apple        | Fruits        |
| Banana       | Fruits        |
| Tomato       | Vegetables    |
| Milk         | Dairy         |
| Bread        | Bakery        |
| Soft Drink   | Beverages     |
| Potato Chips | Snacks        |
| Ice Cream    | Frozen Foods  |
| Soap         | Personal Care |
| Rice         | Grains        |
+--------------+---------------+
10 rows in set (0.00 sec)

mysql> -- 2. Display order details along with customer name
mysql> SELECT o.order_id, c.name, o.order_date, o.total_amount
    -> FROM Orders o
    -> JOIN Customers c ON o.customer_id = c.customer_id;
+----------+----------+------------+--------------+
| order_id | name     | order_date | total_amount |
+----------+----------+------------+--------------+
|      201 | Ramesh   | 2025-01-10 |       300.00 |
|      202 | Suresh   | 2025-01-11 |       190.00 |
|      203 | Anjali   | 2025-01-12 |       310.00 |
|      204 | Praveen  | 2025-01-13 |       150.00 |
|      205 | Kavya    | 2025-01-14 |       220.00 |
|      206 | Mahesh   | 2025-01-15 |       180.00 |
|      207 | Lakshmi  | 2025-01-16 |       260.00 |
|      208 | Srikanth | 2025-01-17 |       140.00 |
|      209 | Ravi     | 2025-01-18 |       200.00 |
|      210 | Divya    | 2025-01-19 |       275.00 |
+----------+----------+------------+--------------+
10 rows in set (0.00 sec)

mysql> -- 3. Display total number of orders placed by each customer
mysql> SELECT c.name, COUNT(o.order_id) AS total_orders
    -> FROM Customers c
    -> JOIN Orders o ON c.customer_id = o.customer_id
    -> GROUP BY c.name;
+----------+--------------+
| name     | total_orders |
+----------+--------------+
| Ramesh   |            1 |
| Suresh   |            1 |
| Anjali   |            1 |
| Praveen  |            1 |
| Kavya    |            1 |
| Mahesh   |            1 |
| Lakshmi  |            1 |
| Srikanth |            1 |
| Ravi     |            1 |
| Divya    |            1 |
+----------+--------------+
10 rows in set (0.03 sec)

mysql> -- 4. Display total sales amount
mysql> SELECT SUM(total_amount) AS total_sales
    -> FROM Orders;
+-------------+
| total_sales |
+-------------+
|     2225.00 |
+-------------+
1 row in set (0.03 sec)

mysql> -- 5. Display total quantity sold for each product
mysql> SELECT p.product_name, SUM(oi.quantity) AS total_quantity
    -> FROM Products p
    -> JOIN Order_Items oi ON p.product_id = oi.product_id
    -> GROUP BY p.product_name;
+--------------+----------------+
| product_name | total_quantity |
+--------------+----------------+
| Apple        |              3 |
| Banana       |              1 |
| Tomato       |              3 |
| Milk         |              2 |
| Bread        |              2 |
| Soft Drink   |              4 |
| Potato Chips |              5 |
| Ice Cream    |              2 |
| Soap         |              3 |
| Rice         |              2 |
+--------------+----------------+
10 rows in set (0.00 sec)

mysql> -- 6.  Display average product price per category
mysql> SELECT c.category_name, AVG(p.price) AS avg_price
    -> FROM Categories c
    -> JOIN Products p ON c.category_id = p.category_id
    -> GROUP BY c.category_name;
+---------------+-----------+
| category_name | avg_price |
+---------------+-----------+
| Fruits        | 80.000000 |
| Vegetables    | 30.000000 |
| Dairy         | 60.000000 |
| Bakery        | 35.000000 |
| Beverages     | 45.000000 |
| Snacks        | 20.000000 |
| Frozen Foods  | 90.000000 |
| Personal Care | 25.000000 |
| Grains        | 65.000000 |
+---------------+-----------+
9 rows in set (0.03 sec)

mysql> -- 7. Display customers who placed at least one order
mysql> SELECT DISTINCT c.name
    -> FROM Customers c
    -> JOIN Orders o ON c.customer_id = o.customer_id;
+----------+
| name     |
+----------+
| Ramesh   |
| Suresh   |
| Anjali   |
| Praveen  |
| Kavya    |
| Mahesh   |
| Lakshmi  |
| Srikanth |
| Ravi     |
| Divya    |
+----------+
10 rows in set (0.00 sec)

mysql> -- 8. Display total amount spent by each customer
mysql> SELECT c.name, SUM(o.total_amount) AS total_spent
    -> FROM Customers c
    -> JOIN Orders o ON c.customer_id = o.customer_id
    -> GROUP BY c.name;
+----------+-------------+
| name     | total_spent |
+----------+-------------+
| Ramesh   |      300.00 |
| Suresh   |      190.00 |
| Anjali   |      310.00 |
| Praveen  |      150.00 |
| Kavya    |      220.00 |
| Mahesh   |      180.00 |
| Lakshmi  |      260.00 |
| Srikanth |      140.00 |
| Ravi     |      200.00 |
| Divya    |      275.00 |
+----------+-------------+
10 rows in set (0.00 sec)

mysql> -- Hard
mysql> -- 1. Display customer name and total amount of their highest order
mysql> SELECT c.name, MAX(o.total_amount) AS highest_order
    -> FROM Customers c
    -> JOIN Orders o ON c.customer_id = o.customer_id
    -> GROUP BY c.name;
+----------+---------------+
| name     | highest_order |
+----------+---------------+
| Ramesh   |        300.00 |
| Suresh   |        190.00 |
| Anjali   |        310.00 |
| Praveen  |        150.00 |
| Kavya    |        220.00 |
| Mahesh   |        180.00 |
| Lakshmi  |        260.00 |
| Srikanth |        140.00 |
| Ravi     |        200.00 |
| Divya    |        275.00 |
+----------+---------------+
10 rows in set (0.00 sec)

mysql> -- 2. Display product name with total revenue generated
mysql> SELECT p.product_name, SUM(oi.subtotal) AS total_revenue
    -> FROM Products p
    -> JOIN Order_Items oi ON p.product_id = oi.product_id
    -> GROUP BY p.product_name;
+--------------+---------------+
| product_name | total_revenue |
+--------------+---------------+
| Apple        |        360.00 |
| Banana       |         40.00 |
| Tomato       |         90.00 |
| Milk         |        120.00 |
| Bread        |         70.00 |
| Soft Drink   |        180.00 |
| Potato Chips |        100.00 |
| Ice Cream    |        180.00 |
| Soap         |         75.00 |
| Rice         |        130.00 |
+--------------+---------------+
10 rows in set (0.00 sec)

mysql> -- 3. Display customers and the number of items they ordered
mysql> SELECT c.name, SUM(oi.quantity) AS total_items
    -> FROM Customers c
    -> JOIN Orders o ON c.customer_id = o.customer_id
    -> JOIN Order_Items oi ON o.order_id = oi.order_id
    -> GROUP BY c.name;
+----------+-------------+
| name     | total_items |
+----------+-------------+
| Ramesh   |           3 |
| Suresh   |           3 |
| Anjali   |           2 |
| Praveen  |           2 |
| Kavya    |           4 |
| Mahesh   |           5 |
| Lakshmi  |           2 |
| Srikanth |           3 |
| Ravi     |           2 |
| Divya    |           1 |
+----------+-------------+
10 rows in set (0.00 sec)

mysql> -- 4. Display customers who spent more than average total spending
mysql> SELECT c.name, SUM(o.total_amount) AS total_spent
    -> FROM Customers c
    -> JOIN Orders o ON c.customer_id = o.customer_id
    -> GROUP BY c.name
    -> HAVING SUM(o.total_amount) > (
    ->     SELECT AVG(total_amount) FROM Orders
    -> );
+---------+-------------+
| name    | total_spent |
+---------+-------------+
| Ramesh  |      300.00 |
| Anjali  |      310.00 |
| Lakshmi |      260.00 |
| Divya   |      275.00 |
+---------+-------------+
4 rows in set (0.00 sec)

mysql> -- 5. Display category-wise total revenue
mysql> SELECT c.category_name, SUM(oi.subtotal) AS category_revenue
    -> FROM Categories c
    -> JOIN Products p ON c.category_id = p.category_id
    -> JOIN Order_Items oi ON p.product_id = oi.product_id
    -> GROUP BY c.category_name;
+---------------+------------------+
| category_name | category_revenue |
+---------------+------------------+
| Fruits        |           400.00 |
| Vegetables    |            90.00 |
| Dairy         |           120.00 |
| Bakery        |            70.00 |
| Beverages     |           180.00 |
| Snacks        |           100.00 |
| Frozen Foods  |           180.00 |
| Personal Care |            75.00 |
| Grains        |           130.00 |
+---------------+------------------+
9 rows in set (0.00 sec)

mysql>
mysql> -- 6. Display orders that contain more than one product
mysql> SELECT o.order_id, COUNT(oi.product_id) AS product_count
    -> FROM Orders o
    -> JOIN Order_Items oi ON o.order_id = oi.order_id
    -> GROUP BY o.order_id
    -> HAVING COUNT(oi.product_id) > 1;
+----------+---------------+
| order_id | product_count |
+----------+---------------+
|      201 |             2 |
+----------+---------------+
1 row in set (0.00 sec)

mysql> -- 7. Display the customer who ordered the highest total quantity of items
mysql> SELECT c.name, SUM(oi.quantity) AS total_quantity
    -> FROM Customers c
    -> JOIN Orders o ON c.customer_id = o.customer_id
    -> JOIN Order_Items oi ON o.order_id = oi.order_id
    -> GROUP BY c.name
    -> ORDER BY total_quantity DESC
    -> LIMIT 1;
+--------+----------------+
| name   | total_quantity |
+--------+----------------+
| Mahesh |              5 |
+--------+----------------+
1 row in set (0.00 sec)

mysql> -- 8. Display product(s) with maximum total quantity sold
mysql> SELECT p.product_name, SUM(oi.quantity) AS total_sold
    -> FROM Products p
    -> JOIN Order_Items oi ON p.product_id = oi.product_id
    -> GROUP BY p.product_name
    -> HAVING SUM(oi.quantity) = (
    ->     SELECT MAX(total_qty)
    ->     FROM (
    ->         SELECT SUM(quantity) AS total_qty
    ->         FROM Order_Items
    ->         GROUP BY product_id
    ->     ) AS temp
    -> );
+--------------+------------+
| product_name | total_sold |
+--------------+------------+
| Potato Chips |          5 |
+--------------+------------+
1 row in set (0.00 sec)