-- drop table Products
-- drop table Orders 

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50)
);

INSERT INTO Products (product_id, product_name, product_category) VALUES
(1, 'Leetcode Solutions', 'Book'),
(2, 'Jewels of Stringology', 'Book'),
(3, 'HP', 'Laptop'),
(4, 'Lenovo', 'Laptop'),
(5, 'Leetcode Kit', 'T-shirt');

CREATE TABLE Orders (
    product_id INT,
    order_date DATE,
    unit INT,
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Orders (product_id, order_date, unit) VALUES
(1, '2020-02-05', 60),
(1, '2020-02-10', 70),
(2, '2020-01-18', 30),
(2, '2020-02-11', 80),
(3, '2020-02-17', 2),
(3, '2020-02-24', 3),
(4, '2020-03-01', 20),
(4, '2020-03-04', 30),
(4, '2020-03-04', 60),
(5, '2020-02-25', 50),
(5, '2020-02-27', 50),
(5, '2020-03-01', 50);

-- Solution
SELECT (Select product_name from Products P
WHERE P.product_id = O.product_id) as Product_name, SUM(unit) as Total FROM Orders O
WHERE order_date BETWEEN '2020-02-01' AND '2020-02-29'
GROUP BY O.product_id
HAVING SUM(O.unit) >= 100;
