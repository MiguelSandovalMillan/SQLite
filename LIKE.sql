CREATE TABLE people (
    id INT PRIMARY KEY,
    name TEXT NOT NULL
);


INSERT INTO people (id, name) VALUES
(13, 'Jhon'),
(14, 'Kayle'),
(15, 'Kyla'),
(16, 'Somala'),
(17, 'Katarina'),
(18, 'Koa'),
(19, 'Olerrte'),
(20, 'Kassandra'),
(21, 'Kirra'),
(22, 'Koval');


--- Obtén todas las personas cuyo nombre 
--- comienza con K (mayúscula) y termina con a (minúscula),
--- y ordena los resultados por los nombres en orden descendente.

SELECT * FROM people
WHERE name LIKE 'K%a'
ORDER BY name DESC;