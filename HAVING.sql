CREATE TABLE earthquakes (
    location VARCHAR(50),
    amplitude FLOAT,
    period FLOAT
);

INSERT INTO earthquakes (location, amplitude, period) VALUES
('Stonebri', 0.01, 1),
('Readat', 0.003, 24),
('Chelten', 5, 0.2),
('Stonebri', 74, 49),
('Stonebri', 11, 62),
('Readat', 0.008, 0.34),
('Chelten', 73, 13),
('Hamwyawi', 68, 72),
('Chelten', 3, 1.2),
('Hamwyawi', 64, 45),
('Hamwyawi', 0.0005, 1.2),
('Stonebri', 13, 1.6);



SELECT location, ROUND(AVG(((amplitude/period)*(amplitude/period)) / period),2) AS avg_magnitude 
FROM earthquakes
WHERE amplitude >= 1 AND period >= 1
GROUP BY location
HAVING avg_magnitude > 1


--
La escala de Richter es una escala logarítmica utilizada para medir la magnitud de los terremotos.

Necesitamos devolver la magnitud media de cada ubicación de todos los terremotos importantes.

Un terremoto importante se define como:

La amplitud es mayor o igual que 1
El período de las ondas es mayor o igual que 1 minuto
Para este desafío, usaremos una fórmula diferente: M = (A/T)2 / T, que es equivalente a M = ((A/T)*(A/T)) / T.

Devuelve la ubicación y la magnitud media de cada ubicación, 
incluyendo únicamente los terremotos importantes (nombra la columna avg_magnitude). 
Incluye en el resultado únicamente las ubicaciones donde avg_magnitude sea mayor que 1.

Redondea los resultados a 2 decimales.