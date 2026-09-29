
CREATE TABLE friends_1 (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    friend_id INT
);

INSERT INTO friends_1 (id, name, friend_id) VALUES
(15, 'Alkeides', 17),
(16, 'Hardwin', 26),
(17, 'Myles', 15),
(18, 'Davinia', 24),
(19, 'Janina', 22),
(20, 'Sizwe', 29),
(21, 'Ryu', 20),
(22, 'Celmente', 18),
(23, 'Alda', 20),
(24, 'Benja', 26),
(25, 'Valeria', 17),
(26, 'Urmas', 27),
(27, 'Fikri', 26),
(28, 'Dulcie', 16),
(29, 'Janis', 20);




-- Une la tabla consigo misma para que una fila pueda mostrar dos personas diferentes
SELECT f1.name AS friend1, f2.name AS friend2
FROM friends_1 AS f1
INNER JOIN friends_1 AS f2 ON f1.friend_id = f2.id

-- Mantén solo los pares que se apuntan mutuamente
WHERE f1.id = f2.friend_id AND f1.id < f2.id;




Encuentra pares de amigos que sean amigos mutuos 
(existe amistad mutua cuando el friend_id de la persona A apunta a la persona B Y el friend_id de la persona B apunta a la persona A). 
Muestra los nombres de ambos amigos en una sola fila. Nombra las columnas friend1 y friend2.

Nota: Incluye en la cláusula WHERE el criterio friend1.id < friend2.id para que no incluya pares duplicados 

