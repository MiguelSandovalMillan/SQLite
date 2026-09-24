CREATE TABLE orders (
    id INT PRIMARY KEY,
    customer_id INT
);


CREATE TABLE products (
    id INT PRIMARY KEY,
    unit_price INT,
    units_in_stock INT
);

CREATE TABLE order_items (
    id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT
);

==========================================================

INSERT INTO orders (id, customer_id) VALUES
(9, 115),
(11, 116),
(12, 117),
(13, 118),
(14, 119),
(15, 120),
(16, 121),
(17, 122),
(18, 123),
(19, 124),
(20, 125),
(21, 126),
(22, 127),
(23, 128),
(24, 129);


INSERT INTO products (id, unit_price, units_in_stock) VALUES
(5, 13, 154),
(6, 15, 124),
(7, 11, 111),
(8, 18, 79),
(9, 16, 98),
(10, 9, 146),
(29, 14, 85),
(12, 9, 95);


INSERT INTO order_items (id, order_id, product_id, quantity) VALUES
(1, 10, 8, 5),
(2, 10, 10, 2),
(3, 11, 5, 3),
(4, 12, 12, 2),
(5, 13, 11, 4),
(6, 13, 8, 3),
(7, 13, 5, 2),
(8, 14, 10, 1),
(9, 14, 8, 3),
(10, 14, 11, 4),
(11, 14, 7, 2),
(12, 15, 12, 5),
(13, 16, 6, 1),
(14, 16, 7, 5),
(15, 17, 11, 1),
(16, 17, 6, 5),
(17, 18, 7, 2),
(18, 18, 9, 3),
(19, 18, 8, 4),
(20, 19, 11, 2);



==========================================================



-- Lista la columna de agrupación y el valor agregado que pide la tarea
SELECT customer_id, SUM(order_items.quantity) AS total_quantity
FROM orders
-- Cada join necesita una condición que empareje una columna id con la columna que apunta a ella
INNER JOIN order_items ON orders.id = order_items.order_id
INNER JOIN products ON order_items.product_id = products.id
-- Luego mantén solo las filas que cumplan el umbral que describe la tarea
WHERE products.unit_price < 10
GROUP BY orders.customer_id;


DROP TABLE products;