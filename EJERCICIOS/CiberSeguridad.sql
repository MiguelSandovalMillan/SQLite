CREATE TABLE events (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    size DECIMAL(10,3) NOT NULL,
    year INT NOT NULL
);

INSERT INTO events (id, name, size, year) VALUES
(153, 'foat', 43, 2009),
(154, 'antiMAL', 70, 1999),
(155, 'devdev', 1009, 2011),
(156, NULL, 53, 2005),
(157, 'hacker', 0.02, 2010),
(158, 'log15234', 72, 1051),
(159, 'plural', 9999, 2055),
(160, 'system', 0.5, 2001),
(161, 'system182', 35, 2009),
(162, 'system124', 85, 2013),
(163, 'virus', 10021, 0),
(164, 'svg', 55, 2023),
(165, 'system982', 45, 2023),
(166, 'photio', 53, 2016),
(167, 'favicon', 49, 2016),
(168, 'system', 0.002, 2049),
(169, NULL, 50, 1209),
(170, 'server host', 49, 2015),
(171, 'boot', 9102, 2000),
(172, 'angryBOT', 0.001, 9999);


SELECT id, name 
FROM events
WHERE (size < 1 OR size > 100) OR year < 2000 OR name IS NULL
ORDER BY id DESC

DROP TABLE events;