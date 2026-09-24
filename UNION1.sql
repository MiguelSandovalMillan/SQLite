CREATE TABLE courses (
    course_id INTEGER PRIMARY KEY,
    lecturer_id INT NOT NULL
);

CREATE TABLE professors (
    lecturer_id INTEGER PRIMARY KEY,
    name TEXT NOT NULL
);

INSERT INTO courses (course_id, lecturer_id) VALUES
(1, 1),
(2, 1),
(3, 2);

INSERT INTO professors (lecturer_id, name) VALUES
(1, 'Jhonas'),
(2, 'Malidos');





-- OPCION 1 --

SELECT courses.course_id, professors.name AS lecturer_name
FROM courses, professors
WHERE courses.lecturer_id = professors.lecturer_id

-- Aquí escribimos dos tablas en la palabra clave FROM y, en la cláusula WHERE, 
-- solicitamos que el lecturer_id de ambos registros sea el mismo. 
-- En la cláusula SELECT, ahora escribimos table.column para que la base de datos sepa de dónde obtener la columna.
-- Une la tabla cursos con profesores, pero solo devuelve las filas que tienen coincidencias en ambas tablas.






-- OPCION 2 --

SELECT courses.course_id, professors.name AS lecturer_name
FROM courses
JOIN professors ON courses.lecturer_id = professors.lecturer_id

-- En lugar de WHERE usamos JOIN table ON condition
-- Este tipo de combinación también se denomina combinación interna.
-- Une la tabla cursos con profesores, pero solo devuelve las filas que tienen coincidencias en ambas tablas.