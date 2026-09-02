-- Crear Tabla de usuarios
CREATE TABLE users (
    user_id INTEGER PRIMARY KEY,
    seniority TEXT NOT NULL
);


-- Insertar datos en la tabla de usuarios
INSERT INTO users (user_id, seniority) VALUES
(652, 'Senior'),
(653, 'Junior'),
(654, 'Mid-level'),
(655, 'Senior'),
(656, 'Junior');

-- Consultas
SELECT user_id FROM users