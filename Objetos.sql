CREATE TABLE objects(
    id INTEGER PRIMARY KEY,
    colorful BOOLEAN NOT NULL,
    in_stock BOOLEAN NOT NULL,
    size INTEGER NOT NULL,
    is_fragile BOOLEAN NOT NULL,
);

INSERT INTO objects (id, colorful, in_stock, size, is_fragile) VALUES
(988, TRUE, FALSE, 2, FALSE),
(989, TRUE, TRUE, 2, FALSE),
(990, FALSE, FALSE, 4, TRUE),
(991, FALSE, TRUE, 2, FALSE),
(992, TRUE, FALSE, 2, FALSE),
(993, FALSE, FALSE, 1, FALSE),
(994, FALSE, TRUE, 4, TRUE),
(995, FALSE, TRUE, 4, FALSE),
(996, TRUE, TRUE, 4, TRUE),
(997, FALSE, TRUE, 3, FALSE);


SELECT * FROM objects
WHERE (colorful IS TRUE AND is_fragile IS FALSE) OR (in_stock IS TRUE AND size <= 2)