CREATE TABLE beverages (
    id INT NOT NULL,
    current_year INT NOT NULL,
    expiration_year INT NOT NULL
);



INSERT INTO beverages (id, current_year, expiration_year) VALUES
(145, 2013, 2014),
(156, 2001, 2015),
(167, 2009, 2004),
(178, 2005, 2000),
(124, 2013, 2006),
(189, 2002, 2014),
(198, 2007, 2013),
(201, 2004, 2007),
(206, 2000, 2000),
(112, 2011, 2002),
(209, 2008, 2004),
(125, 2015, 2012),
(980, 2008, 2005),
(402, 2010, 2011),
(391, 2008, 2009),
(144, 2015, 2013),
(213, 2014, 2007),
(100, 2001, 2000),
(145, 2002, 2004),
(981, 2011, 2014),
(210, 2002, 2007),
(392, 2010, 2006),
(393, 2007, 2013),
(113, 2010, 2002),
(255, 2001, 2008);



SELECT id AS to_renew FROM beverages
WHERE ((current_year - expiration_year > 6)) OR (expiration_year = current_year) OR (expiration_year = current_year + 1)
ORDER BY (current_year - expiration_year) DESC

