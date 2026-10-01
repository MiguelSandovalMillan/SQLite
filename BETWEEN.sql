CREATE TABLE data (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    value INTEGER
);

INSERT INTO data (value) VALUES
(13),
(3),
(6),
(9),
(2),
(7),
(21),
(10),
(7),
(13),
(14),
(16);


SELECT * FROM data
WHERE value BETWEEN 7 AND 13