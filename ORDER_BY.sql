CREATE TABLE competicion (
    runner_id INTEGER PRIMARY KEY,
    age INTEGER NOT NULL,
    speed REAL NOT NULL
);

INSERT INTO competicion (runner_id, age, speed) VALUES
(1, 47, 3.65),
(2, 62, 3.07),
(3, 57, 6.82),
(4, 56, 4.34),
(5, 25, 4.93),
(6, 40, 3.94),
(7, 23, 6.58),
(8, 40, 3.43);


-- Ordena por Edad de menor a mayor--
SELECT * FROM competicion
WHERE age > 50
ORDER BY age

-- Ordena por Edad de mayor a menor--
SELECT * FROM competicion
WHERE age > 50
ORDER BY age DESC


-- Ordena por velocidad de menor a mayor--
SELECT * FROM competicion
WHERE age > 50
ORDER BY speed

-- Ordena por velocidad de mayor a menor--
SELECT * FROM competicion
WHERE age > 50
ORDER BY speed DESC


-- Se puede añadir mas dde una columna para ordenar, en este caso primero por edad y luego por velocidad--
SELECT * FROM competicion
WHERE age < 50
ORDER BY age DESC, speed DESC





