CREATE TABLE friends_2 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    friend_id INT
);

INSERT INTO friends_2 (id, name, friend_id) VALUES
(15, 'Alkeides', 25),
(16, 'Hardwin', 20),
(17, 'Myles', 15),
(18, 'Davinia', 19),
(19, 'Janina', 18),
(20, 'Sizwe', 29),
(21, 'Ryu', 20),
(22, 'Celmente', 18),
(23, 'Alda', 20),
(24, 'Benja', 26),
(25, 'Valeria', 26),
(26, 'Urmas', 25),
(27, 'Fikri', 19),
(28, 'Dulcie', 29),
(29, 'Janis', 20);


-- Une la tabla consigo misma dos veces para que una fila contenga una cadena de tres personas
SELECT f1.name AS friend1, f2.name AS friend2, f3.name AS friend3
FROM friends_2 AS f1
JOIN friends_2 AS f2 ON f1.friend_id = f2.id
JOIN friends_2 AS f3 ON f2.friend_id = f3.id

-- Descarta las cadenas que vuelven a la persona de la que partieron
WHERE NOT friend3 = friend1
ORDER BY friend1 DESC;

