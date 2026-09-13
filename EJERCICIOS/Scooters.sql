    _SUBCONSULTAS_

CREATE TABLE scooters (
    model VARCHAR(50),
    brand VARCHAR(50),
    has_lights INT,
    price INT
);

-- Inserción de los datos
INSERT INTO scooters (model, brand, has_lights, price) VALUES
('IEYOXBo', 'sunshine', 0, 1951),
(NULL, 'pickle', 1, 1395),
('qoErfvS', 'sunshine', 1, 1805),
('pPwA8lg', 'pickle', 1, 1366),
('urzNYsZ', 'sunshine', 0, 611),
('dxhYsGB', 'mushoo', 1, 1118),
('5LFLwLB', 'mushoo', 0, 1312),
(NULL, 'pickle', 1, 1431),
('LBZTU8P', 'thospher', 1, 636),
(NULL, 'borde', 1, 710),
('TXKboej', 'sunshine', 0, 604),
('8IsTPtz', 'thospher', 1, 640),
('rN2XZ21', 'mushoo', 0, 1596),
('RjTKPkh', 'mushoo', 1, 886),
('bYWh50Z', 'borde', 1, 973),
('j77Gqic', 'thospher', 1, 599),
('8fnergZ', 'pickle', 1, 1062),
('DXU1ZxR', 'mushoo', 0, 765),
('Tn1i2MV', 'thospher', 1, 1544),
('7FfGNqj', 'sunshine', 1, 1816);



-- Paso 2: filtra las filas reconstruidas, luego promedialas por grupo
SELECT brand, 
    AVG(price) AS avg_price
FROM (
    -- Paso 1: reconstruye cada fila, reemplazando el valor con el ajustado
    SELECT model, brand, has_lights, price + (SELECT AVG(price) FROM scooters) AS price
    FROM scooters
)
WHERE model IS NOT NULL AND has_lights = 1
GROUP BY brand
ORDER BY avg_price ASC




Tablas y columnas disponibles:

scooters: model, brand, has_lights, price

Como gerente de una tienda de scooters, has notado que muchos scooters no son originales, lo que significa que les falta un nombre de modelo. 
Además, los scooters defectuosos normalmente no tienen luces.

Tu tarea consta de dos pasos:

Primero, añade a todos los precios de los scooters de la tienda el precio promedio general.
Después, calcula el precio promedio de cada brand, considerando únicamente los scooters buenos y originales (es decir, scooters con un nombre de modelo y luces).
El resultado debe incluir brand y el precio promedio: avg_price. Ordena los resultados por el precio promedio en orden ascendente.