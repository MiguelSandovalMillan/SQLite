CREATE TABLE items(
    id INT PRIMARY KEY
);

INSERT INTO items (id) VALUES
(56),
(57),
(58),
(59),
(60),
(61);


SELECT id, (3 * id * id * id * id) + (5 * id * id * id ) + (0.9 * id * id) + (2.2 * id) + 1 AS quartic
FROM items;