CREATE TABLE countries (
    location_x REAL NOT NULL,
    location_y REAL NOT NULL,
    country TEXT NOT NULL
);

INSERT INTO countries (location_x, location_y, country) VALUES
(53.0, 27.53, 'Belarus'),
(57.18, 24.96, 'Latvia'),
(-25.64, 134.25, 'Australia'),
(20.33, 55.85, 'Oman'),
(3.59, 45.45, 'Somalia'),
(12.85, -85.32, 'Nicaragua'),
(27.26, 90.5, 'Bhutan'),
(36.65, 139.61, 'Japan'),
(14.52, -14.47, 'Senegal'),
(39.39, -3.21, 'Spain');



SELECT * FROM countries
WHERE country IN ('Oman','Nicaragua','Bhutan','Senegal','Belarus')

