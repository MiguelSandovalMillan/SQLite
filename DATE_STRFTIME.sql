CREATE TABLE TheDates (
    id INT PRIMARY KEY,
    start VARCHAR(50),
    end VARCHAR(50)
);

-- Inserción de todos los datos
INSERT INTO TheDates (id, start, end) VALUES
(13, '2009-01-12T22:00:00.000Z', '2009-01-14T22:00:00.000Z'),
(14, '2009-10-11T22:00:00.000Z', '2009-10-18T22:00:00.000Z'),
(15, '2009-09-14T21:00:00.000Z', '2009-09-30T22:00:00.000Z'),
(16, '2009-02-19T22:00:00.000Z', '2010-02-20T22:00:00.000Z'),
(17, '2009-08-07T21:00:00.000Z', '2009-08-08T21:00:00.000Z'),
(18, '2010-12-23T22:00:00.000Z', '2010-12-31T22:00:00.000Z'),
(19, '2009-07-13T21:00:00.000Z', '2009-07-15T21:00:00.000Z'),
(20, '2009-07-25T21:00:00.000Z', '2009-07-30T21:00:00.000Z'),
(21, '2008-04-02T21:00:00.000Z', '2008-04-02T21:00:00.000Z'),
(22, '2010-01-01T22:00:00.000Z', '2010-01-04T22:00:00.000Z'),
(23, '2009-08-01T10:00:00.000Z', '2009-08-01T20:00:00.000Z'),
(24, '2009-08-022009-08-01T03:00:00.000Z', '2009-08-022009-08-01T11:00:00.000Z'),
(25, '2009-08-10T03:00:00.000Z', '2009-08-12T03:00:00.000Z'),
(26, '2009-08-23T09:00:00.000Z', '2009-08-25T06:00:00.000Z'),
(27, '2009-09-01T01:00:00.000Z', '2009-09-12T01:00:00.000Z');




SELECT id, 
    STRFTIME('%d-%m-%Y',start) AS formatted_start,
    STRFTIME('%d-%m-%Y',end) AS formatted_end,
    ROUND(JULIANDAY(end) - JULIANDAY(start)) AS duration_days
FROM TheDates
WHERE STRFTIME('%Y', start) = STRFTIME('%Y', '2009-01-31')
ORDER BY duration_days DESC



--- PROBLEMA
Escribe una consulta que muestre:

El ID del evento
La fecha de inicio con el formato "DD-MM-YYYY". Llama a esta columna formatted_start
La fecha de finalización con el formato "DD-MM-YYYY". Llama a esta columna formatted_end
La duración en días entre el inicio y el final, redondeada al número entero más cercano. Llama a esta columna duration_days
Filtra únicamente las filas cuyo año de la columna start sea 2009 (STRFTIME() devuelve una cadena y no un número).

Ordena los resultados por la duración en días en orden descendente.