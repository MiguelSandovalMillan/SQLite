CREATE TABLE people (
    name TEXT PRIMARY KEY,
    age INTEGER NOT NULL,
    gender TEXT NOT NULL
);

INSERT INTO people (name, age, gender) VALUES
('Joas', 13, 'Male'),
('Holwa', 17, 'Male'),
('Nohlas', 24, 'Female'),
('Polar', 23, 'Male'),
('Loopa', 18, 'Female');


SELECT * FROM people
WHERE gender = "Female" AND age < 20;


-------------------------------------------------


CREATE TABLE people (
    name TEXT PRIMARY KEY,
    age INTEGER NOT NULL,
    status TEXT NOT NULL
);


INSERT INTO people (name, age, status) VALUES
('Charles', 28, 'employed'),
('Fatima', 38, 'unemployed'),
('Eric', 11, 'unemployed'),
('Diya', 44, 'employed'),
('Hanna', 22, 'employed'),
('Ali', 20, 'unemployed'),
('Gabriel', 37, 'employed'),
('Beatriz', 17, 'employed'),
('Troy', 29, 'unemployed'),
('Angelica', 32, 'employed');



SELECT * FROM people
WHERE age >= 20 AND age <= 28;


SELECT * FROM people
WHERE age >= 17 AND age <= 25 AND status = "employed"