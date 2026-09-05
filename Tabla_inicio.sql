-- Crear Tabla de usuarios
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    seniority TEXT NOT NULL
);

CREATE TABLE workers (
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    age INTEGER NOT NULL,
    exp_years REAL NOT NULL,
    gender TEXT NOT NULL
);

-- Insertar datos en la tabla de usuarios
INSERT INTO users (user_id, seniority) VALUES
(652, 'Senior'),
(653, 'Junior'),
(654, 'Mid-level'),
(655, 'Senior'),
(656, 'Junior');


INSERT INTO workers (first_name, last_name, age, exp_years, gender) VALUES
('Ghully', 'Thuas', 29, 2.3, 'Female'),
('Bostal', 'Shkolky', 32, 0.2, 'Male'),
('Qaostu', 'Malop', 25, 4, 'Female');


                -- CONSULTAS --

-- SELECT * FROM users  (SELECIONA TODA LA TABLA DE USUARIOS)

-- SELECT DISTINCT coin FROM sales  (SELECCIONA TODAS LAS MONEDAS DISTINTAS DE LA TABLA DE VENTAS)

-- DROP TABLE sales; (ELIMINA LA TABLA DE VENTAS)
