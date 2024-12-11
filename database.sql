DROP DATABASE IF EXISTS techmarket;

CREATE DATABASE techmarket;

USE techmarket;


CREATE TABLE IF NOT EXISTS customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(255),
    customer_email VARCHAR(255),
    signup_date DATE
);


CREATE TABLE IF NOT EXISTS products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    price DECIMAL(10,2)
);


CREATE TABLE IF NOT EXISTS orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATE,
    quantity INT,
    total_price DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO customers (customer_id, customer_name, customer_email, signup_date) VALUES
(1, 'Customer 1', 'customer1@example.com', '2022-04-23'),
(2, 'Customer 2', 'customer2@example.com', '2023-01-15'),
(3, 'Customer 3', 'customer3@example.com', '2022-08-05'),
(4, 'Customer 4', 'customer4@example.com', '2021-12-01'),
(5, 'Customer 5', 'customer5@example.com', '2023-06-17'),
(6, 'Customer 6', 'customer6@example.com', '2021-11-30'),
(7, 'Customer 7', 'customer7@example.com', '2022-09-19'),
(8, 'Customer 8', 'customer8@example.com', '2022-11-07'),
(9, 'Customer 9', 'customer9@example.com', '2021-10-29'),
(10, 'Customer 10', 'customer10@example.com', '2023-03-11'),
(11, 'Customer 11', 'customer11@example.com', '2021-12-20'),
(12, 'Customer 12', 'customer12@example.com', '2022-01-10'),
(13, 'Customer 13', 'customer13@example.com', '2023-07-18'),
(14, 'Customer 14', 'customer14@example.com', '2022-06-30'),
(15, 'Customer 15', 'customer15@example.com', '2023-04-01'),
(16, 'Customer 16', 'customer16@example.com', '2022-03-21'),
(17, 'Customer 17', 'customer17@example.com', '2023-08-22'),
(18, 'Customer 18', 'customer18@example.com', '2021-07-13'),
(19, 'Customer 19', 'customer19@example.com', '2022-05-14'),
(20, 'Customer 20', 'customer20@example.com', '2021-09-02');


INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Product 1', 'Laptops', 1200.00),
(2, 'Product 2', 'Smartphones', 800.00),
(3, 'Product 3', 'Tablets', 400.00),
(4, 'Product 4', 'Accessories', 50.00),
(5, 'Product 5', 'Laptops', 1500.00),
(6, 'Product 6', 'Smartphones', 700.00),
(7, 'Product 7', 'Tablets', 350.00),
(8, 'Product 8', 'Accessories', 70.00),
(9, 'Product 9', 'Laptops', 1100.00),
(10, 'Product 10', 'Smartphones', 750.00);


INSERT INTO orders (order_id, customer_id, product_id, order_date, quantity, total_price) 
VALUES
(1, 1, 1, '2023-01-15', 2, 2400.00),
(2, 2, 2, '2023-02-20', 1, 800.00),
(3, 3, 3, '2023-03-10', 3, 1200.00),
(4, 4, 4, '2023-03-21', 5, 250.00),
(5, 5, 5, '2023-04-11', 1, 1500.00),
(6, 6, 6, '2023-05-04', 2, 1400.00),
(7, 7, 7, '2023-06-18', 1, 350.00),
(8, 8, 8, '2023-07-10', 2, 140.00),
(9, 9, 9, '2023-08-15', 3, 3300.00),
(10, 10, 10, '2023-09-01', 2, 1500.00),
(11, 11, 1, '2023-06-05', 1, 1200.00),
(12, 12, 2, '2023-06-22', 1, 800.00),
(13, 13, 3, '2023-07-19', 4, 1600.00),
(14, 14, 4, '2023-08-10', 3, 150.00),
(15, 15, 5, '2023-09-02', 1, 1500.00),
(16, 16, 6, '2023-09-10', 2, 1400.00),
(17, 17, 7, '2023-09-15', 1, 350.00),
(18, 18, 8, '2023-09-25', 3, 210.00),
(19, 19, 9, '2023-09-30', 1, 1100.00),
(20, 20, 10, '2023-10-01', 2, 1500.00);



