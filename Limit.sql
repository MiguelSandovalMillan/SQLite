CREATE TABLE employees (
    id INT PRIMARY KEY,
    salary INT NOT NULL,
    status VARCHAR(7) NOT NULL
);


INSERT INTO employees (id, salary, status) VALUES
(1, 2016, 'married'),
(2, 5903, 'single'),
(3, 7608, 'married'),
(4, 6448, 'single'),
(5, 9551, 'married'),
(6, 6505, 'married'),
(7, 5753, 'single'),
(8, 7313, 'single'),
(9, 4219, 'single'),
(10, 3140, 'married'),
(11, 2702, 'married'),
(12, 3035, 'single'),
(13, 7590, 'single'),
(14, 3404, 'married'),
(15, 4551, 'married');


SELECT id
FROM employees
WHERE status = "married"
ORDER BY salary ASC 
LIMIT 4


---Como propietario de una fábrica de vehículos, has acordado otorgar un aumento de salario a los cuatro empleados con los 
-- salarios más bajos que también están casados,
-- ya que están luchando por financiar a sus familias. 
-- Devuelve solo los IDs de los 4 empleados relevantes (aquellos con los salarios más bajos entre los empleados casados). 
-- Ordena los resultados por salario en orden ascendente.