CREATE TABLE beans (
    brand VARCHAR(255),
    density DECIMAL(5,3),
    diameter_wide DECIMAL(5,3),
    shade VARCHAR(50)
);

INSERT INTO beans (brand, density, diameter_wide, shade) VALUES
('Shllips', 0.429, 5.670, 'light'),
('Stevenspus', 0.125, 5.123, 'dark'),
('Shllips', 0.740, 6.672, 'dark'),
('Hadelia', 0.235, 6.534, 'light'),
('Hadelia', 0.119, 5.034, 'dark'),
('Gorazora', 0.493, 5.686, 'dark'),
('Gorazora', 0.643, 5.804, 'dark'),
('Hadelia', 0.174, 6.921, 'dark'),
('Gorazora', 0.782, 5.828, 'light'),
('Gorazora', 0.882, 6.987, 'dark'),
('Hadelia', 0.612, 6.529, 'light'),
('Stevenspus', 0.390, 5.767, 'dark'),
('Stevenspus', 0.619, 6.922, 'dark'),
('Stevenspus', 0.346, 6.815, 'light'),
('Shllips', 0.954, 5.753, 'dark'),
('Shllips', 0.451, 5.942, 'semi-dark');

-- Filtra primero las filas individuales, luego agrúpalas, luego filtra los grupos

SELECT brand, ROUND(AVG(density),3) AS avg_density
FROM beans

-- Dos condiciones a nivel de fila aquí: una sobre size, una que combina las reglas de type entre paréntesis

WHERE diameter_wide > (SELECT AVG(diameter_wide) FROM beans)
    AND ((shade = 'light' AND (density / diameter_wide) > 0.01) OR shade = 'dark')
GROUP BY brand
HAVING AVG(density) < 0.8
ORDER BY avg_density ASC