CREATE TABLE grades2 (
    course_id INT,
    student_id INT,
    grade INT
);

CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(30)
);

========================================================

INSERT INTO grades2 (course_id, student_id, grade) VALUES
(1, 5, 57),
(1, 6, 55),
(1, 7, 42),
(1, 8, 70),
(1, 9, 93),
(2, 5, 37),
(2, 6, 57),
(2, 7, 86),
(2, 8, 50),
(2, 9, 23),
(3, 5, 45),
(3, 6, 84),
(3, 7, 79),
(3, 8, 35),
(3, 9, 31);


INSERT INTO students (id, name) VALUES
(5, 'Iuturna'),
(6, 'Hildingr'),
(7, 'Antioco'),
(8, 'Agathe'),
(9, 'Helena');

========================================================


-- Rellena esta lista con las dos columnas de salida, renombradas como pide la tarea
SELECT students.name AS student, grade
FROM students,

(
    -- Dentro de estos corchetes, produce un promedio redondeado por persona
    SELECT student_id, ROUND(AVG(grade),2) AS grade
    FROM grades
    GROUP BY student_id
) AS avg_grades

-- Ahora empareja el resultado interno de nuevo con la tabla externa en las columnas id compartidas
WHERE students.id = avg_grades.student_id
ORDER BY grade ASC

