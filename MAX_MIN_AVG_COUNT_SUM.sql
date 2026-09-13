CREATE TABLE sales_2 (
    product_id INT PRIMARY KEY,
    price_per_unit INT,
    quantity INT
);

-- Inserción de los datos
INSERT INTO sales_2 (product_id, price_per_unit, quantity) VALUES
(4, 19, 1),
(5, 16, 3),
(6, 13, 2),
(7, 21, 1),
(8, 16, 3),
(9, 23, 5),
(10, 27, 1),
(11, 18, 2),
(12, 21, 3),
(13, 22, 2);


SELECT COUNT(product_id) AS total_transactions, 
    AVG(quantity) AS avg_quantity, 
    MAX(price_per_unit) AS max_unit_price,
    SUM(quantity * price_per_unit) AS total_revenue
FROM sales_2