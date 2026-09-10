CREATE TABLE products(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    price INTEGER NOT NULL,
    quantity INTEGER NOT NULL
);

INSERT INTO products(price, quantity) VALUES
(154, 18),
(98, 3),
(54, 15),
(142, 14),
(70, 2),
(189, 7),
(44, 3),
(62, 16),
(101, 8),
(192, 9);


SELECT price * 2 - 20 AS high_mix_op,
    quantity / 1.5 + 5 AS low_mix
FROM products;