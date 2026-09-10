CREATE TABLE kitchen_items (
    cutlery TEXT PRIMARY KEY,
    amount INT NOT NULL
);

INSERT INTO kitchen_items (cutlery, amount) VALUES
('knife', 3),
('spoon', 13),
('fork', 9),
('toothpick', 49),
('straw', 32),
('chopsticks', 14),
('nutcracker', 1),
('spatula', 2),
('rolling pin', 1),
('honey dipper', 1);


SELECT cutlery AS silverware, amount FROM kitchen_items
WHERE amount < 3