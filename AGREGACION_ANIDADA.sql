CREATE TABLE items_2 (
    id INT PRIMARY KEY,
    price INT
);

-- Inserción de los datos
INSERT INTO items_2 (id, price) VALUES
(4, 19),
(5, 16),
(6, 13),
(7, 21),
(8, 16),
(9, 23),
(10, 27),
(11, 18),
(12, 21),
(13, 22);


SELECT id,
    price,
    price - (SELECT AVG(price) FROM items_2) AS diff_from_avg    -- Anidado para calcular la diferencia con el promedio --
FROM items_2
ORDER BY diff_from_avg DESC


Calcula cuánto supera el precio de cada elemento al precio promedio de todos los elementos. 
Muestra el ID del elemento, su precio y la diferencia con respecto al promedio. 
Nombra la columna de diferencia como diff_from_avg.