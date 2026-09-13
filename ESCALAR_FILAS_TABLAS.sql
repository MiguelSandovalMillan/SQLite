CREATE TABLE shop_2 (
    price INT,
    quantity INT,
    category VARCHAR(50),
    list_date VARCHAR(50)
);

-- Inserción de los datos
INSERT INTO shop_2 (price, quantity, category, list_date) VALUES
(35, 1, 'garden', '2015-03-06T22:00:00.000Z'),
(24, 2, 'food', '2015-04-10T21:00:00.000Z'),
(61, 5, 'plants', '2015-04-12T21:00:00.000Z'),
(51, 2, 'garden', '2015-01-15T22:00:00.000Z'),
(66, 4, 'school', '2015-03-19T22:00:00.000Z'),
(47, 7, 'garden', '2015-01-10T22:00:00.000Z'),
(62, 4, 'school', '2015-03-01T22:00:00.000Z'),
(30, 7, 'school', '2015-01-03T22:00:00.000Z'),
(51, 6, 'food', '2015-02-14T22:00:00.000Z'),
(59, 1, 'plants', '2015-01-14T22:00:00.000Z'),
(50, 7, 'plants', '2015-02-04T22:00:00.000Z'),
(42, 3, 'school', '2015-01-02T22:00:00.000Z'),
(48, 6, 'plants', '2015-03-07T22:00:00.000Z'),
(68, 7, 'food', '2015-01-18T22:00:00.000Z'),
(12, 3, 'garden', '2015-04-17T21:00:00.000Z'),
(20, 1, 'toys', '2015-04-20T21:00:00.000Z');








SELECT category, total_quantity
FROM (
    SELECT category, AVG(quantity),SUM(quantity) AS total_quantity
    FROM shop_2
    GROUP BY category HAVING SUM(quantity) > AVG(quantity)
)



Encuentra las categorías cuya cantidad total sea mayor que el promedio de todas las cantidades de la tienda.

Importante: Debes usar una subconsulta dentro de la cláusula HAVING para calcular el promedio. 
No uses un valor codificado manualmente ni una consulta separada: la subconsulta debe calcular AVG(quantity) directamente a partir de la tabla shop dentro de HAVING.

Pasos para resolverlo:
-Primero, escribe una subconsulta que calcule el promedio de todas las cantidades de la tienda: SELECT AVG(quantity) FROM shop
-Después, para cada categoría, suma sus cantidades y compáralas con esta subconsulta usando la palabra clave HAVING
