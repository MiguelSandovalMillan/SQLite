CREATE TABLE grades (
    course_id INT,
    student_id INT,
    grade INT
);


CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);


-----------------------------------------------------------------

INSERT INTO grades (course_id, student_id, grade) VALUES
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

-----------------------------------------------------------------------


SELECT students.name AS student_name, grades.course_id, students.id AS student_id, grades.grade
FROM students, grades
-- Conserva solo los pares de filas donde ambas tablas describen a la misma persona
WHERE grades.student_id = students.id
ORDER BY grade