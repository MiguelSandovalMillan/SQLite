CREATE TABLE foods_2 (
    name VARCHAR(50),
    type VARCHAR(50),
    pH REAL
);


INSERT INTO foods_2 (name, type, pH) VALUES
('Celery', 'vegetable', 5.8),
('Peas', 'vegetable', 6.5),
('Corn', 'vegetable', 7.0),
('Kale', 'vegetable', 6.4),
('Pepper', 'vegetable', 5.15),
('Cabbage', 'vegetable', 5.5),
('Banana', 'fruit', 4.8),
('Mango', 'fruit', 4.3),
('Peaches', 'fruit', 3.5),
('Apricot', 'fruit', 3.7),
('Oranges', 'fruit', 3.6),
('Cherries', 'berry', 3.7),
('Raspberries', 'berry', 3.5),
('Strawberries', 'berry', 3.3),
('Blueberries', 'berry', 3.7),
('Grapes', 'berry', 3.9);



SELECT type, ROUND(AVG(pH),2) AS ph_average FROM foods_2
GROUP BY type