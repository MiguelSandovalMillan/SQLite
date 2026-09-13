    _SUBCONSULTAS_

CREATE TABLE shop_3 (
    price INT,
    quantity INT,
    category VARCHAR(50),
    list_date VARCHAR(50)
);



-- Inserción de los datos
INSERT INTO shop_3 (price, quantity, category, list_date) VALUES
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
(12, 3, 'garden', '2015-04-17T21:00:00.000Z');



-- Paso 2: agrupa las filas reconstruidas y totalízalas, las más grandes primero
SELECT category,
    SUM(price * quantity) AS total_revenue
FROM (
    -- Paso 1: reconstruye cada fila para que el valor corregido reemplace al original
    SELECT price + (SELECT AVG(price) FROM shop WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18') AS price, quantity, category, list_date
    FROM shop
    WHERE list_date BETWEEN '2015-01-01' AND '2015-03-18'
)
GROUP BY category
ORDER BY total_revenue DESC




Tu tarea es calcular los ingresos totales para cada categoría de artículos en una tienda entre el January 1, 2015 y el March 18, 2015. 
Debido a un error sistemático en el sistema de entrada de datos, todos los valores de precio de la base de datos son inferiores a lo que deberían por una cantidad fija.


Para corregir estos precios:

Primero, calcula el precio promedio de todos los artículos dentro del intervalo de fechas especificado (2015-01-01 (1 de enero de 2015), hasta 2015-03-18 18 de marzo de 2015)
Suma este precio promedio al precio original de cada artículo para obtener el valor de precio correcto
Para cada categoría, calcula los ingresos totales multiplicando el precio corregido por la cantidad y sumando estos valores
Presenta los resultados como pares (category, total_revenue), ordenados por ingresos totales en orden descendente